import 'package:cfloor_flutter/virtual_machines/built_in_globals.dart';

import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../virtual_machine.dart';
import '../instructions.dart';
import '../virtual_memory.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2BaseListener.dart';

// hack: this exists so we have a base type that implements InstructionGeneratingTreeWalker
// to satisfy InstructionGeneratorUtils' "on" type narrowing
abstract class _CFloor2TreeWalkerBase extends CFloor2BaseListener implements InstructionGeneratingTreeWalker {
}

class CFloor2TreeWalker extends _CFloor2TreeWalkerBase with RegisterManager, InstructionGeneratorUtils, VariableDeclarationManager {
  @override
  final VirtualMachine virtualMachine;
  @override
  final List<String> semanticErrors = [];

  CFloor2TreeWalker(this.virtualMachine);

  @override
  get builtInVariables => builtInMathConstants;

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    // record that the variable was declared and what type it has
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final variableType = DataType.values.firstWhere((type) => type.name == ctx.Type()!.text);
    addDeclaration(variableName, variableType, ctx.start!);
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final startToken = ctx.assignment()!.Identifier()!.symbol;
    checkDeclareBeforeUse(variableName, startToken);
    checkConstantAssignment(variableName, startToken);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    // Get data source by processing rhs expression
    DataSource? dataSource;
    if(ctx.readFunctionExpression() != null) {
      dataSource = _handleReadExpression(ctx.readFunctionExpression()!);
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    } // else there was a syntax error

    if(dataSource != null) {
      // validate rhs type matches lhs type
      final variableName = ctx.Identifier()!.text!;

      // get lhs type - either it was declared previously, this is part of a
      // declAssign, or we'll end up with a declare before use error anyway
      DataType? variableType = getDeclaredType(variableName);
      if(variableType == null && ctx.parent is DeclAssignStatementContext) {
        variableType = DataType.values.firstWhere((type) => type.name == (ctx.parent as DeclAssignStatementContext).Type()!.text);
      }
      if(variableType != null) {
        checkTypeConversion(dataSource.dataType, variableType, ctx);
      }

      virtualMachine.addInstruction(
          AssignmentInstruction(
            getTextRange(ctx),
            VariableDataDestination(variableType ?? dataSource.dataType, virtualMachine.memory, variableName),
            dataSource,
          )
      );
    }
    // recycle any registers used by expressions
    nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    if(ctx.Identifier() != null || ctx.Number() != null) {
      final dataSource = ctx.Identifier() != null
          ? sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol)
          : sourceFromConstant(ctx.Number()!.text!);
      virtualMachine.addInstruction(
        WriteInstruction(
          getTextRange(ctx),
          virtualMachine.consoleState,
          dataSource
        )
      );
    } else if(ctx.StringLiteral() != null) {
      virtualMachine.addInstruction(WriteInstruction(getTextRange(ctx), virtualMachine.consoleState, ConstantDataSource(DataType.string, ctx.StringLiteral()!.text!)));
    } // else there was a syntax error
  }

  DataSource _handleReadExpression(ReadFunctionExpressionContext ctx) {
    final readType = ctx.text.startsWith('readInt') ? DataType.int : DataType.float;
    final destination = allocateRegister(readType);
    virtualMachine.addInstruction(ReadInstruction(getTextRange(ctx), virtualMachine.consoleState, destination, readType));
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
      allocateRegister(combineNumericDataTypes(leftDataSource.dataType, rightDataSource.dataType, ctx.MathOperator()!.symbol))
    ;

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType != DataType.int || rightDataSource.dataType != DataType.int) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: modulo operator only works on integers.');
      }
    }

    virtualMachine.addInstruction(
      MathInstruction(
        getTextRange(ctx),
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
      return sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
    } else if(ctx.Number() != null) {
      return sourceFromConstant(ctx.Number()!.text!);
    } else if(ctx.mathFunctionExpression() != null) {
      return _handleMathFunctionExpression(ctx.mathFunctionExpression()!);
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  _handleMathFunctionExpression(MathFunctionExpressionContext ctx) {
    final function = MathFunction.values.firstWhere((fn) => fn.name == ctx.text.split('(')[0]);
    final dataSource = _handleMathExpression(ctx.mathExpression()!);
    final targetRegister = allocateRegister(dataSource.dataType);
    virtualMachine.addInstruction(
      MathFunctionInstruction(
        getTextRange(ctx),
        function,
        dataSource,
        targetRegister,
      )
    );
    return targetRegister.toSource();
  }
}