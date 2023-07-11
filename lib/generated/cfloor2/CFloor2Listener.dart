// Generated from CFloor2.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor2Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [CFloor2Parser].
abstract class CFloor2Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [CFloor2Parser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.mathOperand].
  /// [ctx] the parse tree
  void enterMathOperand(MathOperandContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.mathOperand].
  /// [ctx] the parse tree
  void exitMathOperand(MathOperandContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.mathExpression].
  /// [ctx] the parse tree
  void enterMathExpression(MathExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.mathExpression].
  /// [ctx] the parse tree
  void exitMathExpression(MathExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.readRealExpression].
  /// [ctx] the parse tree
  void enterReadRealExpression(ReadRealExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.readRealExpression].
  /// [ctx] the parse tree
  void exitReadRealExpression(ReadRealExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.readIntExpression].
  /// [ctx] the parse tree
  void enterReadIntExpression(ReadIntExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.readIntExpression].
  /// [ctx] the parse tree
  void exitReadIntExpression(ReadIntExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void enterMathFunctionExpression(MathFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void exitMathFunctionExpression(MathFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.readExpression].
  /// [ctx] the parse tree
  void enterReadExpression(ReadExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.readExpression].
  /// [ctx] the parse tree
  void exitReadExpression(ReadExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.assignStatement].
  /// [ctx] the parse tree
  void enterAssignStatement(AssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.assignStatement].
  /// [ctx] the parse tree
  void exitAssignStatement(AssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.declAssignStatement].
  /// [ctx] the parse tree
  void enterDeclAssignStatement(DeclAssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.declAssignStatement].
  /// [ctx] the parse tree
  void exitDeclAssignStatement(DeclAssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.writeStatement].
  /// [ctx] the parse tree
  void enterWriteStatement(WriteStatementContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.writeStatement].
  /// [ctx] the parse tree
  void exitWriteStatement(WriteStatementContext ctx);

  /// Enter a parse tree produced by [CFloor2Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [CFloor2Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);
}