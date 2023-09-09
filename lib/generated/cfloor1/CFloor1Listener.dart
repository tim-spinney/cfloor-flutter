// Generated from grammars/CFloor1.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [CFloor1Parser].
abstract class CFloor1Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [CFloor1Parser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.declAssignStatement].
  /// [ctx] the parse tree
  void enterDeclAssignStatement(DeclAssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.declAssignStatement].
  /// [ctx] the parse tree
  void exitDeclAssignStatement(DeclAssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.assignStatement].
  /// [ctx] the parse tree
  void enterAssignStatement(AssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.assignStatement].
  /// [ctx] the parse tree
  void exitAssignStatement(AssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.writeStatement].
  /// [ctx] the parse tree
  void enterWriteStatement(WriteStatementContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.writeStatement].
  /// [ctx] the parse tree
  void exitWriteStatement(WriteStatementContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.variableAccessor].
  /// [ctx] the parse tree
  void enterVariableAccessor(VariableAccessorContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.variableAccessor].
  /// [ctx] the parse tree
  void exitVariableAccessor(VariableAccessorContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.mathOperand].
  /// [ctx] the parse tree
  void enterMathOperand(MathOperandContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.mathOperand].
  /// [ctx] the parse tree
  void exitMathOperand(MathOperandContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.mathExpression].
  /// [ctx] the parse tree
  void enterMathExpression(MathExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.mathExpression].
  /// [ctx] the parse tree
  void exitMathExpression(MathExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [CFloor1Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void enterReadFunctionExpression(ReadFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor1Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void exitReadFunctionExpression(ReadFunctionExpressionContext ctx);
}