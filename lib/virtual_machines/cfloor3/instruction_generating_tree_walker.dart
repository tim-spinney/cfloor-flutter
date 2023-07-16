import 'package:antlr4/antlr4.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../expression.dart';
import '../virtual_machine.dart';
import '../expressions.dart';
import '../virtual_memory.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3Parser.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3BaseListener.dart';
import 'package:cfloor_flutter/console_state.dart';

class CFloor3TreeWalker extends CFloor3BaseListener implements InstructionGeneratingTreeWalker {
  static final _interpolationRegex = RegExp(r"\$[a-z][a-z_]*");

  int _nextRegister = 0;
  final Map<String, DataType> _variableDeclarations = {};

  @override
  final VirtualMachine virtualMachine;
  @override
  final List<String> semanticErrors = [];

  CFloor3TreeWalker(this.virtualMachine);

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    // record that the variable was declared and what type it has
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final variableType = DataType.values.firstWhere((type) => type.name == ctx.Type()!.text);
    _variableDeclarations[variableName] = variableType;
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _checkDeclareBeforeUse(variableName, ctx.assignment()!.start!);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    // Get data source by processing rhs expression
    DataSource? dataSource;
    if(ctx.readFunctionExpression() != null) {
      dataSource = _handleReadExpression(ctx.readFunctionExpression()!);
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    } else if(ctx.StringLiteral() != null) {
      dataSource = _handleStringLiteral(ctx.StringLiteral()!.text!, ctx.StringLiteral()!.symbol);
    } // else there was a syntax error
    if(dataSource != null) {
      // validate rhs type matches lhs type
      final variableName = ctx.Identifier()!.text!;

      // get lhs type - either it was declared previously, this is part of a
      // declAssign, or we'll end up with a declare before use error anyway
      DataType? variableType = _variableDeclarations[variableName];
      if(variableType == null && ctx.parent is DeclAssignStatementContext) {
        variableType = DataType.values.firstWhere((type) => type.name == (ctx.parent as DeclAssignStatementContext).Type()!.text);
      }
      if(variableType != null) {
        _checkTypeConversion(dataSource.dataType, variableType, ctx);
      }

      virtualMachine.instructions.add(
          AssignmentExpression(
            _getTextRange(ctx),
            VariableDataDestination(variableType ?? dataSource.dataType, virtualMachine.memory, variableName),
            dataSource,
          )
      );
    }
    // recycle any registers used by expressions
    _nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    late final DataSource dataSource;
    if(ctx.Identifier() != null) {
      dataSource = _sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
    } else if(ctx.Number() != null) {
      dataSource = _sourceFromConstant(ctx.Number()!.text!);
    } else {
      dataSource = _handleStringLiteral(ctx.StringLiteral()!.text!, ctx.StringLiteral()!.symbol);
    }
    virtualMachine.instructions.add(WriteExpression(_getTextRange(ctx), virtualMachine.consoleState, dataSource));
  }

  _checkTypeConversion(DataType source, DataType destination, ParserRuleContext ctx) {
    if(source == destination) {
      return;
    } else if(source == DataType.int && destination == DataType.float) {
      return;
    }
    semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: cannot assign ${source.name} to a(n) ${destination.name}.');
  }

  DataSource _handleReadExpression(ReadFunctionExpressionContext ctx) {
    final type = RegExp(r"^read([A-Z][a-z]*)").firstMatch(ctx.text)?.group(1)?.toLowerCase();
    final readType = switch(type) {
      'int' => DataType.int,
      'float' => DataType.float,
      'string' => DataType.string,
      _ => throw Exception('Unknown read type: $ctx.text'),
    };
    final destination = _allocateRegister(readType);
    virtualMachine.instructions.add(ReadExpression(_getTextRange(ctx), virtualMachine.consoleState, destination, readType));
    return destination.toSource();
  }

  DataSource _handleMathExpression(MathExpressionContext ctx) {
    final leftOperand = ctx.mathOperand(0)!;
    if(ctx.MathOperator() == null) {
      return _handleMathOperand(leftOperand);
    }
    final mathOperator = MathOperator.bySymbol[ctx.MathOperator()!.text]!;
    final rightOperand = ctx.mathOperand(1)!;
    final leftDataSource = _handleMathOperand(leftOperand);
    final rightDataSource = _handleMathOperand(rightOperand);
    final targetRegister =
    leftDataSource is RegisterMemorySource ? leftDataSource.toDestination() :
    rightDataSource is RegisterMemorySource ? rightDataSource.toDestination() :
    _allocateRegister(_combineNumericDataTypes(leftDataSource.dataType, rightDataSource.dataType, ctx.start!))
    ;

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType != DataType.int || rightDataSource.dataType != DataType.int) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: modulo operator only works on integers.');
      }
    }

    virtualMachine.instructions.add(
        MathExpression(
          _getTextRange(ctx),
          mathOperator,
          leftDataSource,
          rightDataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleMathOperand(MathOperandContext ctx) {
    if(ctx.mathExpression() != null) {
      return _handleMathExpression(ctx.mathExpression()!);
    } else if(ctx.Identifier() != null) {
      return _sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
    } else if(ctx.Number() != null) {
      return _sourceFromConstant(ctx.Number()!.text!);
    } else if(ctx.mathFunctionExpression() != null) {
      return _handleMathFunctionExpression(ctx.mathFunctionExpression()!);
    } else if(ctx.stringLengthExpression() != null) {
      return _handleStringLengthExpression(ctx.stringLengthExpression()!);
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  DataSource _handleStringLiteral(String literalText, Token stringToken) {
    final withoutQuotes = literalText.substring(1, literalText.length - 1);
    final matches = _interpolationRegex.allMatches(withoutQuotes).toList();
    if(matches.isEmpty) {
      return ConstantDataSource(DataType.string, withoutQuotes);
    }
    int endOfPrevious = 0;
    final outputRegister = _allocateRegister(DataType.string);
    for(final match in matches) {
      final literalFromPrevious = ConstantDataSource(DataType.string, withoutQuotes.substring(endOfPrevious, match.start).replaceAll(r"$$", r"$"));
      final variableName = match.group(0)!.substring(1);
      final variableSource = _sourceFromMemory(variableName, stringToken);
      final textRange = TextRange(stringToken.startIndex + match.start + 1, stringToken.startIndex + match.end );
      if(endOfPrevious == 0) {
        virtualMachine.instructions.add(
            StringConcatenationExpression(
                textRange,
                literalFromPrevious,
                variableSource,
                outputRegister
            )
        );
      } else {
        virtualMachine.instructions.add(
            StringConcatenationExpression(
                textRange,
                outputRegister.toSource(),
                literalFromPrevious,
                outputRegister
            )
        );
        virtualMachine.instructions.add(
            StringConcatenationExpression(
                textRange,
                outputRegister.toSource(),
                variableSource,
                outputRegister
            )
        );
      }
      endOfPrevious = match.end;
    }
    if(endOfPrevious < withoutQuotes.length) {
      final literalToEnd = ConstantDataSource(
          DataType.string, withoutQuotes.substring(endOfPrevious));
      final textRange = TextRange(stringToken.startIndex + endOfPrevious + 1, stringToken.stopIndex);
      virtualMachine.instructions.add(
          StringConcatenationExpression(
              textRange,
              outputRegister.toSource(),
              literalToEnd,
              outputRegister
          )
      );
    }
    return outputRegister.toSource();
  }

  _handleMathFunctionExpression(MathFunctionExpressionContext ctx) {
    final function = MathFunction.values.firstWhere((fn) => fn.name == ctx.text.split('(')[0]);
    final dataSource = _handleMathExpression(ctx.mathExpression()!);
    final targetRegister = _allocateRegister(dataSource.dataType);
    virtualMachine.instructions.add(
        MathFunctionExpression(
          _getTextRange(ctx),
          function,
          dataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleStringLengthExpression(StringLengthExpressionContext ctx) {
    final identifier = ctx.Identifier()!;
    final variableName = identifier.text!;
    _checkDeclareBeforeUse(variableName, identifier.symbol);
    final lengthRegister = _allocateRegister(DataType.int);
    virtualMachine.instructions.add(
        StringLengthExpression(
            _getTextRange(ctx),
            _sourceFromMemory(variableName, identifier.symbol),
            lengthRegister
        )
    );
    return lengthRegister.toSource();
  }

  VariableMemorySource _sourceFromMemory(String variableName, Token startToken) {
    _checkDeclareBeforeUse(variableName, startToken);
    return VariableMemorySource(_variableDeclarations[variableName]!, virtualMachine.memory, variableName);
  }

  ConstantDataSource _sourceFromConstant(String numberText) {
    bool isInt = int.tryParse(numberText) != null;
    final value = double.parse(numberText);
    return ConstantDataSource(isInt ? DataType.int : DataType.float, value);
  }

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  _checkDeclareBeforeUse(String variableName, Token startToken) {
    if(!_variableDeclarations.containsKey(variableName)) {
      semanticErrors.add(
          'Semantic error at line ${startToken.line}:${startToken.charPositionInLine}: variable name $variableName needs to be declared before use.');
    }
  }

  _combineNumericDataTypes(DataType left, DataType right, Token startToken) {
    if(!_typeIsNumeric(left) || !_typeIsNumeric(right)) {
      semanticErrors.add('Type mismatch at ${startToken.line}:${startToken.charPositionInLine}: math operators only work on numbers.');
      throw Exception('Cannot combine non-numeric types');
    }
    if(left == DataType.float || right == DataType.float) {
      return DataType.float;
    } else {
      return DataType.int;
    }
  }

  bool _typeIsNumeric(DataType type) => type == DataType.int || type == DataType.float;

  RegisterDataDestination _allocateRegister(DataType dataType) => RegisterDataDestination(dataType, virtualMachine.memory, _nextRegister++);
}