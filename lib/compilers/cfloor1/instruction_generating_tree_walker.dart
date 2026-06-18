import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Parser.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1BaseListener.dart';
import '../wrappers/expression.dart';
import '../built_in_globals.dart';
import '../../compilers/semantic_error_collector.dart';
import '../generic/compiler.dart';
import '../wrappers/identifier.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import '../../language_core/data_type.dart';
import '../math_operator.dart';
import '../wrappers/assignment.dart';
import '../wrappers/instructions.dart';
import '../wrappers/math_expression.dart';
import '../wrappers/math_operand.dart';
import '../wrappers/read_expression.dart';
import '../wrappers/string_literal.dart';
import '../wrappers/variable_accessor.dart';
import '../wrappers/write_statement.dart';

class CFloor1TreeWalker extends CFloor1BaseListener implements InstructionGenerator {
  late final GenericCompiler _compiler;

  @override
  final semanticErrorCollector = SemanticErrorCollector();

  CFloor1TreeWalker() {
    _compiler = GenericCompiler(semanticErrorCollector, {});
  }

  @override
  Map<String, Constant> get builtInVariables => {};

  @override
  List<Instruction> get instructions => _compiler.topLevelInstructions;

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    _compiler.handleDeclAssignStatement(_toAssignment(ctx.assignment()!), DataType.int.toCompositeType());
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    _compiler.handleAssignStatement(_toAssignment(ctx.assignment()!));
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    _compiler.handleWriteStatement(_toWriteStatement(ctx));
  }

  MathOperand _toMathOperand(MathOperandContext ctx) => MathOperand(
    ctx.textRange,
    ctx.variableAccessor() != null ? _toVariableAccessor(ctx.variableAccessor()!) : null,
    ctx.Number()?.text,
  );

  MathExpression _toMathExpression(MathExpressionContext ctx) {
    if(ctx.mathOperand() != null) {
      return MathExpressionBaseCase(ctx.textRange, _toMathOperand(ctx.mathOperand()!));
    }
    if(ctx.mathExpressions().length == 1) { // parenthetical expression
      return _toMathExpression(ctx.mathExpression(0)!);
    }
    // binary operation
    final operator = ctx.MathOperatorPrioMult() ?? ctx.MathOperatorPrioAdd();
    return MathExpressionRecursive(
      ctx.textRange,
      _toMathExpression(ctx.mathExpression(0)!),
      _toMathExpression(ctx.mathExpression(1)!),
      MathOperator.bySymbol[operator!.text]!,
    );
  }

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
    _toExpression(ctx.expression()!),
  );

  Expression _toExpression(ExpressionContext ctx) {
    if(ctx.readFunctionExpression() != null) {
      return _toReadExpression(ctx.readFunctionExpression()!);
    }
    return _toMathExpression(ctx.mathExpression()!);
  }

  Identifier _toIdentifier(TerminalNode ctx) => Identifier(
    ctx.textRange,
    ctx.text!,
  );

  ReadExpression _toReadExpression(ReadFunctionExpressionContext ctx) => ReadExpression(
    ctx.textRange,
    ctx.text,
  );

  StringLiteral _toStringLiteral(TerminalNode ctx) => StringLiteral(
    ctx.textRange,
    ctx.text!,
  );
}