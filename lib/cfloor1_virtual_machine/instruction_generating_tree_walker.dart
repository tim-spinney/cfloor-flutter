import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/cfloor1_virtual_machine/virtual_machine.dart';
import 'expressions.dart';
import 'memory.dart';
import '../generated/cfloor1/CFloor1Parser.dart';
import '../generated/cfloor1/CFloor1BaseListener.dart';
import '../console_state.dart';

class InstructionGeneratingTreeWalker extends CFloor1BaseListener {
  final ConsoleState _consoleState;
  int _nextRegister = 0;
  final VirtualMachine virtualMachine = VirtualMachine();
  final Set<String> _variableNames = {};
  final List<String> semanticErrors = [];

  InstructionGeneratingTreeWalker(this._consoleState);

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _variableNames.add(variableName);
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _checkDeclareBeforeUse(variableName, ctx.assignment()!);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    final variableName = ctx.Identifier()!.text!;
    DataSource? dataSource;
    if(ctx.readRealExpression() != null) {
      final destination = _allocateRegister();
      final textRange = _getTextRange(ctx.readRealExpression()!);
      virtualMachine.instructions.add(ReadRealExpression(textRange, _consoleState, destination));
      dataSource = destination.toSource();
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    }
    if(dataSource != null) {
      virtualMachine.instructions.add(
          AssignmentExpression(
            _getTextRange(ctx),
            VariableDataDestination(virtualMachine.memory, variableName),
            dataSource,
          )
      );
    }
    _nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    if(ctx.Identifier() != null) {
      final variableName = ctx.Identifier()!.text!;
      virtualMachine.instructions.add(
        NumericWriteExpression(
          _getTextRange(ctx),
          _consoleState,
          VariableMemorySource(virtualMachine.memory, variableName),
        )
      );
    } else if(ctx.Number() != null) {
      final value = double.parse(ctx.Number()!.text!);
      virtualMachine.instructions.add(
        NumericWriteExpression(
          _getTextRange(ctx),
          _consoleState,
          ConstantDataSource(value),
        )
      );
    } else {
      final value = ctx.StringLiteral()!.text!;
      virtualMachine.instructions.add(StringLiteralWriteExpression(_getTextRange(ctx), _consoleState, value));
    }
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
      _allocateRegister()
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
      _checkDeclareBeforeUse(ctx.Identifier()!.text!, ctx);
      return VariableMemorySource(virtualMachine.memory, ctx.Identifier()!.text!);
    } else if(ctx.Number() != null) {
      return ConstantDataSource(double.parse(ctx.Number()!.text!));
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  _checkDeclareBeforeUse(String variableName, ParserRuleContext ctx) {
    if(!_variableNames.contains(variableName)) {
      semanticErrors.add(
          'Semantic error at line ${ctx.start!.line}:${ctx.start!.charPositionInLine}: variable name $variableName needs to be declared before use.');
    }
  }

  RegisterDataDestination _allocateRegister() => RegisterDataDestination(virtualMachine.memory, _nextRegister++);
}