// Generated from grammars/CFloor4.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [CFloor4Parser].
abstract class CFloor4Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [CFloor4Parser.expression].
  /// [ctx] the parse tree
  void enterExpression(ExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.expression].
  /// [ctx] the parse tree
  void exitExpression(ExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.booleanOperand].
  /// [ctx] the parse tree
  void enterBooleanOperand(BooleanOperandContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.booleanOperand].
  /// [ctx] the parse tree
  void exitBooleanOperand(BooleanOperandContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.booleanExpression].
  /// [ctx] the parse tree
  void enterBooleanExpression(BooleanExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.booleanExpression].
  /// [ctx] the parse tree
  void exitBooleanExpression(BooleanExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.ifStatement].
  /// [ctx] the parse tree
  void enterIfStatement(IfStatementContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.ifStatement].
  /// [ctx] the parse tree
  void exitIfStatement(IfStatementContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.elseBlock].
  /// [ctx] the parse tree
  void enterElseBlock(ElseBlockContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.elseBlock].
  /// [ctx] the parse tree
  void exitElseBlock(ElseBlockContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.ifBlock].
  /// [ctx] the parse tree
  void enterIfBlock(IfBlockContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.ifBlock].
  /// [ctx] the parse tree
  void exitIfBlock(IfBlockContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.mathOperand].
  /// [ctx] the parse tree
  void enterMathOperand(MathOperandContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.mathOperand].
  /// [ctx] the parse tree
  void exitMathOperand(MathOperandContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void enterStringLengthExpression(StringLengthExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void exitStringLengthExpression(StringLengthExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void enterReadFunctionExpression(ReadFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void exitReadFunctionExpression(ReadFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void enterMathFunctionExpression(MathFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void exitMathFunctionExpression(MathFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.declAssignStatement].
  /// [ctx] the parse tree
  void enterDeclAssignStatement(DeclAssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.declAssignStatement].
  /// [ctx] the parse tree
  void exitDeclAssignStatement(DeclAssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.assignStatement].
  /// [ctx] the parse tree
  void enterAssignStatement(AssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.assignStatement].
  /// [ctx] the parse tree
  void exitAssignStatement(AssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.writeStatement].
  /// [ctx] the parse tree
  void enterWriteStatement(WriteStatementContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.writeStatement].
  /// [ctx] the parse tree
  void exitWriteStatement(WriteStatementContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.mathExpression].
  /// [ctx] the parse tree
  void enterMathExpression(MathExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.mathExpression].
  /// [ctx] the parse tree
  void exitMathExpression(MathExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor4Parser.variableAccessor].
  /// [ctx] the parse tree
  void enterVariableAccessor(VariableAccessorContext ctx);
  /// Exit a parse tree produced by [CFloor4Parser.variableAccessor].
  /// [ctx] the parse tree
  void exitVariableAccessor(VariableAccessorContext ctx);
}