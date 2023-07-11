import 'package:antlr4/antlr4.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../expression.dart';
import '../virtual_machine.dart';
import '../expressions.dart';
import '../virtual_memory.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2BaseListener.dart';
import 'package:cfloor_flutter/console_state.dart';

class CFloor2TreeWalker extends CFloor2BaseListener implements InstructionGeneratingTreeWalker {
  final ConsoleState _consoleState;
  int _nextRegister = 0;
  final Map<String, DataType> _variableDeclarations = {};

  @override
  final VirtualMachine virtualMachine = VirtualMachine();
  @override
  final List<String> semanticErrors = [];

  CFloor2TreeWalker(this._consoleState);

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    // record that the variable was declared and what type it has
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final variableType = DataType.values.firstWhere((type) => type.name == ctx.type()!.text);
    _variableDeclarations[variableName] = variableType;
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    /* Verify that lhs was previously declared. This needs to be done
       independent of exitAssignment()'s checks because the assignment
       alone doesn't have the lhs and may be used for declAssign.
     */
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _checkDeclareBeforeUse(variableName, ctx.assignment()!);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    // Get data source by processing rhs expression
    DataSource? dataSource;
    if(ctx.readExpression() != null) {
      dataSource = _handleReadExpression(ctx.readExpression()!);
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    } // else there was a syntax error

    if(dataSource != null) {
      // validate rhs type matches lhs type
      final variableName = ctx.Identifier()!.text!;
      final variableType = _variableDeclarations[variableName];
      // If it is null, then this is either a declare before use problem or
      // part of a declAssign. The declAssign will validate type matching for us in the latter case.
      if(variableType != null && dataSource.dataType != variableType) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: assigning ${dataSource.dataType.name} to ${variableType.name} variable $variableName');
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
    if(ctx.Identifier() != null || ctx.Number() != null) {
      final dataSource = ctx.Identifier() != null
          ? _sourceFromMemory(ctx.Identifier()!.text!, ctx)
          : _sourceFromConstant(ctx.Number()!.text!);
      virtualMachine.instructions.add(
        NumericWriteExpression(
          _getTextRange(ctx),
          _consoleState,
          dataSource
        )
      );
    } else if(ctx.StringLiteral() != null) {
      virtualMachine.instructions.add(StringLiteralWriteExpression(_getTextRange(ctx), _consoleState, ctx.StringLiteral()!.text!));
    } // else there was a syntax error
  }

  DataSource _handleReadExpression(ReadExpressionContext ctx) {
    final readType = ctx.readIntExpression() == null ? DataType.real : DataType.int;
    final destination = _allocateRegister(readType);
    virtualMachine.instructions.add(ReadExpression(_getTextRange(ctx), _consoleState, destination));
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
      _allocateRegister(_combineDataTypes(leftDataSource.dataType, rightDataSource.dataType))
    ;
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
      return _sourceFromMemory(ctx.Identifier()!.text!, ctx);
    } else if(ctx.Number() != null) {
      return _sourceFromConstant(ctx.Number()!.text!);
    } else if(ctx.mathFunctionExpression() != null) {
      return _handleMathFunctionExpression(ctx.mathFunctionExpression()!);
    } else {
      throw Exception('Unknown math operand type');
    }
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

  VariableMemorySource _sourceFromMemory(String variableName, ParserRuleContext ctx) {
    _checkDeclareBeforeUse(variableName, ctx);
    return VariableMemorySource(_variableDeclarations[variableName]!, virtualMachine.memory, variableName);
  }

  ConstantDataSource _sourceFromConstant(String numberText) {
    bool isInt = int.tryParse(numberText) != null;
    final value = double.parse(numberText);
    return ConstantDataSource(isInt ? DataType.int : DataType.real, value);
  }

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  _checkDeclareBeforeUse(String variableName, ParserRuleContext ctx) {
    if(!_variableDeclarations.containsKey(variableName)) {
      semanticErrors.add(
          'Semantic error at line ${ctx.start!.line}:${ctx.start!.charPositionInLine}: variable name $variableName needs to be declared before use.');
    }
  }

  _combineDataTypes(DataType left, DataType right) {
    if(left == DataType.real || right == DataType.real) {
      return DataType.real;
    } else {
      return DataType.int;
    }
  }

  RegisterDataDestination _allocateRegister(DataType dataType) => RegisterDataDestination(dataType, virtualMachine.memory, _nextRegister++);
}