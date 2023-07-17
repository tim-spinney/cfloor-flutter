import 'package:antlr4/antlr4.dart';
import '../instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import '../expression.dart';
import '../virtual_machine.dart';
import '../expressions.dart';
import '../virtual_memory.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Parser.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1BaseListener.dart';

class CFloor1TreeWalker extends CFloor1BaseListener implements InstructionGeneratingTreeWalker {
  int _nextRegister = 0;
  final Set<String> _variableNames = {};

  @override
  final VirtualMachine virtualMachine;
  @override
  final List<String> semanticErrors = [];

  CFloor1TreeWalker(this.virtualMachine);

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
    if(ctx.readFunctionExpression() != null) {
      final destination = _allocateRegister();
      final textRange = _getTextRange(ctx.readFunctionExpression()!);
      virtualMachine.addInstruction(ReadExpression(textRange, virtualMachine.consoleState, destination, DataType.int));
      dataSource = destination.toSource();
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    }
    if(dataSource != null) {
      virtualMachine.addInstruction(
          AssignmentExpression(
            _getTextRange(ctx),
            VariableDataDestination(DataType.int, virtualMachine.memory, variableName),
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
      virtualMachine.addInstruction(
        WriteExpression(
          _getTextRange(ctx),
          virtualMachine.consoleState,
          VariableMemorySource(DataType.int, virtualMachine.memory, variableName),
        )
      );
    } else if(ctx.Number() != null) {
      final value = int.parse(ctx.Number()!.text!);
      virtualMachine.addInstruction(
        WriteExpression(
          _getTextRange(ctx),
          virtualMachine.consoleState,
          ConstantDataSource(DataType.int, value),
        )
      );
    } else {
      final value = ctx.StringLiteral()!.text!;
      virtualMachine.addInstruction(WriteExpression(_getTextRange(ctx), virtualMachine.consoleState, ConstantDataSource(DataType.string, value)));
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
    virtualMachine.addInstruction(
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
      return VariableMemorySource(DataType.int, virtualMachine.memory, ctx.Identifier()!.text!);
    } else if(ctx.Number() != null) {
      return ConstantDataSource(DataType.int, int.parse(ctx.Number()!.text!));
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

  RegisterDataDestination _allocateRegister() => RegisterDataDestination(DataType.int, virtualMachine.memory, _nextRegister++);
}