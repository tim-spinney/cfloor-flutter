import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Parser.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4BaseListener.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/boolean_expression.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/boolean_operand.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/if_block.dart';
import '../built_in_globals.dart';
import '../instructions.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../semantic_error_collector.dart';
import '../virtual_machine.dart';
import '../wrappers/assignment.dart';
import '../generic/compiler.dart';
import '../wrappers/identifier.dart';
import '../wrappers/length_function_expression.dart';
import '../wrappers/math_expression.dart';
import '../wrappers/math_function_expression.dart';
import '../wrappers/math_operand.dart';
import '../wrappers/read_expression.dart';
import '../wrappers/string_literal.dart';
import '../wrappers/variable_accessor.dart';
import '../wrappers/write_statement.dart';

// hack: this exists so we have a base type that implements InstructionGeneratingTreeWalker
// to satisfy InstructionGeneratorUtils' "on" type narrowing
abstract class _CFloor4TreeWalkerBase extends CFloor4BaseListener implements InstructionGeneratingTreeWalker {
}

class CFloor4TreeWalker extends _CFloor4TreeWalkerBase with VariableDeclarationManager, GenericCompiler {
  @override
  final VirtualMachine virtualMachine;

  @override
  final SemanticErrorCollector semanticErrorCollector = SemanticErrorCollector();

  @override
  get builtInVariables => builtInMathConstants;

  @override
  RegisterManager registerManager;

  CFloor4TreeWalker(this.virtualMachine) : registerManager = RegisterManager(virtualMachine.memory);
  
  @override
  void exitProgram(ProgramContext ctx) {
    // TODO: trim no-ops
    topLevelInstructions.forEach(virtualMachine.addInstruction);
  }

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    final destinationType = DataType.byName(ctx.type()!.text);
    handleDeclAssignStatement(_toAssignment(ctx.assignment()!), destinationType.toCompositeType());
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    handleAssignStatement(_toAssignment(ctx.assignment()!));
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    handleWriteStatement(_toWriteStatement(ctx));
  }

  @override
  void enterIfBlock(IfBlockContext ctx) {
    handleEnteringIfBlock();
  }

  @override
  void exitIfBlock(IfBlockContext ctx) {
    handleExitingIfBlock(_toIfBlock(ctx));
  }

  @override
  void enterIfStatement(IfStatementContext ctx) {
    handleEnteringBranch();
  }

  @override
  void enterElseBlock(ElseBlockContext ctx) {
    handleEnteringBranch();
  }

  @override
  void enterBlock(BlockContext ctx) {
    handleEnteringBlock(ctx.textRange);
  }

  @override
  void exitBlock(BlockContext ctx) {
    handleExitingBlock(ctx.textRange);
  }

  MathOperand _toMathOperand(MathOperandContext ctx) => MathOperand(
    ctx.textRange,
    ctx.mathExpression() != null ? _toMathExpression(ctx.mathExpression()!) : null,
    ctx.variableAccessor() != null ? _toVariableAccessor(ctx.variableAccessor()!) : null,
    ctx.Number()?.text,
    mathFunction: ctx.mathFunctionExpression() != null ? _toMathFunctionExpression(ctx.mathFunctionExpression()!) : null,
    lengthFunction: ctx.stringLengthExpression() != null ? _toLengthFunctionExpression(ctx.stringLengthExpression()!) : null,
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
    ctx.readFunctionExpression() == null ? null : _toReadExpression(ctx.readFunctionExpression()!),
    ctx.mathExpression() == null ? null : _toMathExpression(ctx.mathExpression()!),
    stringLiteral: ctx.StringLiteral() == null ? null : _toStringLiteral(ctx.StringLiteral()!),
    booleanExpression: ctx.booleanExpression() == null ? null : _toBooleanExpression(ctx.booleanExpression()!),
  );

  Identifier _toIdentifier(TerminalNode ctx) => Identifier(
    ctx.textRange,
    ctx.text!,
  );

  ReadExpression _toReadExpression(ReadFunctionExpressionContext ctx) => ReadExpression(
    ctx.textRange,
    _determineReadExpressionType(ctx),
  );

  MathFunctionExpression _toMathFunctionExpression(MathFunctionExpressionContext ctx) => MathFunctionExpression(
    ctx.textRange,
    MathFunction.values.firstWhere((fn) => fn.name == ctx.text.split('(')[0]),
    ctx.mathExpression() != null ? _toMathExpression(ctx.mathExpression()!) : null,
  );

  StringLiteral _toStringLiteral(TerminalNode ctx) => StringLiteral(
    ctx.textRange,
    ctx.text!,
  );

  LengthFunctionExpression _toLengthFunctionExpression(StringLengthExpressionContext ctx) => LengthFunctionExpression(
    ctx.textRange,
    _toVariableAccessor(ctx.variableAccessor()!),
  );

  IfBlock _toIfBlock(IfBlockContext ctx) => IfBlock(
    ctx.textRange,
    ctx.ifStatements().map((IfStatementContext ctx) => _toBooleanExpression(ctx.booleanExpression()!)).toList(),
    ctx.elseBlock() != null,
  );

  BooleanExpression _toBooleanExpression(BooleanExpressionContext ctx) => BooleanExpression(
    ctx.textRange,
    ctx.UnaryBooleanOperator() != null,
    ctx.BinaryBooleanOperator() == null ? null : BooleanOperator.bySymbol[ctx.BinaryBooleanOperator()!.text]!,
    ctx.Comparator() == null ? null : ComparisonOperator.bySymbol[ctx.Comparator()!.text]!,
    ctx.booleanOperands().map((operand) => _toBooleanOperand(operand)).toList(),
    ctx.mathOperands().map((operand) => _toMathOperand(operand)).toList(),
  );

  BooleanOperand _toBooleanOperand(BooleanOperandContext ctx) => BooleanOperand(
    ctx.textRange,
    ctx.BooleanLiteral() == null ? null : bool.parse(ctx.BooleanLiteral()!.text!),
    ctx.variableAccessor() == null ? null : _toVariableAccessor(ctx.variableAccessor()!),
    ctx.booleanExpression() == null ? null : _toBooleanExpression(ctx.booleanExpression()!),
  );

  DataType _determineReadExpressionType(ReadFunctionExpressionContext ctx) {
    final type = RegExp(r"^read([A-Z][a-z]*)").firstMatch(ctx.text)?.group(1)?.toLowerCase();
    return switch(type) {
      'int' => DataType.int,
      'float' => DataType.float,
      'string' => DataType.string,
      _ => throw Exception('Unknown read type: $ctx.text'),
    };
  }
}
