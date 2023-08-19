import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/virtual_machines/built_in_globals.dart';
import 'package:cfloor_flutter/virtual_machines/semantic_error_collector.dart';
import 'package:cfloor_flutter/virtual_machines/generic/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/identifier.dart';
import '../instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import '../math_operator.dart';
import '../virtual_machine.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Parser.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1BaseListener.dart';

import '../wrappers/assignment.dart';
import '../wrappers/math_expression.dart';
import '../wrappers/math_operand.dart';
import '../wrappers/read_expression.dart';
import '../wrappers/string_literal.dart';
import '../wrappers/variable_accessor.dart';
import '../wrappers/write_statement.dart';

// hack: this exists so we have a base type that implements InstructionGeneratingTreeWalker
// to satisfy InstructionGeneratorUtils' "on" type narrowing
abstract class _CFloor1TreeWalkerBase extends CFloor1BaseListener implements InstructionGeneratingTreeWalker {
}

class CFloor1TreeWalker extends _CFloor1TreeWalkerBase with VariableDeclarationManager, GenericCompiler {
  @override
  final semanticErrorCollector = SemanticErrorCollector();

  @override
  final registerManager = RegisterManager();

  @override
  Map<String, Constant> get builtInVariables => {};

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    handleDeclAssignStatement(_toAssignment(ctx.assignment()!), DataType.int.toCompositeType());
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    handleAssignStatement(_toAssignment(ctx.assignment()!));
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    handleWriteStatement(_toWriteStatement(ctx));
  }

  MathOperand _toMathOperand(MathOperandContext ctx) => MathOperand(
    ctx.textRange,
    ctx.mathExpression() != null ? _toMathExpression(ctx.mathExpression()!) : null,
    ctx.variableAccessor() != null ? _toVariableAccessor(ctx.variableAccessor()!) : null,
    ctx.Number()?.text,
  );

  MathExpression _toMathExpression(MathExpressionContext ctx) => MathExpression(
    ctx.textRange,
    ctx.mathOperand(0) != null ? _toMathOperand(ctx.mathOperand(0)!) : null,
    ctx.mathOperand(1) != null ? _toMathOperand(ctx.mathOperand(1)!) : null,
    ctx.MathOperator() != null ? MathOperator.bySymbol[ctx.MathOperator()!.text]! : null,
  );

  VariableAccessor _toVariableAccessor(VariableAccessorContext ctx) => VariableAccessor(
    ctx.textRange,
    _toIdentifier(ctx.Identifier()!),
  );

  WriteStatement _toWriteStatement(WriteStatementContext ctx) => WriteStatement(
    ctx.textRange,
    ctx.Number()?.text,
    ctx.variableAccessor() == null ? null : _toVariableAccessor(ctx.variableAccessor()!),
    ctx.StringLiteral() == null ? null : _toStringLiteral(ctx.StringLiteral()!),
  );

  Assignment _toAssignment(AssignmentContext ctx) => Assignment(
    ctx.textRange,
    VariableAccessor(ctx.textRange, _toIdentifier(ctx.Identifier()!)),
    ctx.readFunctionExpression() != null ? _toReadExpression(ctx.readFunctionExpression()!) : null,
    ctx.mathExpression() != null ? _toMathExpression(ctx.mathExpression()!) : null,
  );

  Identifier _toIdentifier(TerminalNode ctx) => Identifier(
    ctx.textRange,
    ctx.text!,
  );

  ReadExpression _toReadExpression(ReadFunctionExpressionContext ctx) => ReadExpression(
    ctx.textRange,
    DataType.int,
  );

  StringLiteral _toStringLiteral(TerminalNode ctx) => StringLiteral(
    ctx.textRange,
    ctx.text!,
  );
}