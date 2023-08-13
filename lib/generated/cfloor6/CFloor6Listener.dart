// Generated from grammars/CFloor6.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [CFloor6Parser].
abstract class CFloor6Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [CFloor6Parser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.arrayLiteralElement].
  /// [ctx] the parse tree
  void enterArrayLiteralElement(ArrayLiteralElementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.arrayLiteralElement].
  /// [ctx] the parse tree
  void exitArrayLiteralElement(ArrayLiteralElementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.arrayLiteral].
  /// [ctx] the parse tree
  void enterArrayLiteral(ArrayLiteralContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.arrayLiteral].
  /// [ctx] the parse tree
  void exitArrayLiteral(ArrayLiteralContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.arrayInitializer].
  /// [ctx] the parse tree
  void enterArrayInitializer(ArrayInitializerContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.arrayInitializer].
  /// [ctx] the parse tree
  void exitArrayInitializer(ArrayInitializerContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.arrayIndexer].
  /// [ctx] the parse tree
  void enterArrayIndexer(ArrayIndexerContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.arrayIndexer].
  /// [ctx] the parse tree
  void exitArrayIndexer(ArrayIndexerContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.variableAccessor].
  /// [ctx] the parse tree
  void enterVariableAccessor(VariableAccessorContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.variableAccessor].
  /// [ctx] the parse tree
  void exitVariableAccessor(VariableAccessorContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.typedAssignment].
  /// [ctx] the parse tree
  void enterTypedAssignment(TypedAssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.typedAssignment].
  /// [ctx] the parse tree
  void exitTypedAssignment(TypedAssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.forLoop].
  /// [ctx] the parse tree
  void enterForLoop(ForLoopContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.forLoop].
  /// [ctx] the parse tree
  void exitForLoop(ForLoopContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.whileLoop].
  /// [ctx] the parse tree
  void enterWhileLoop(WhileLoopContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.whileLoop].
  /// [ctx] the parse tree
  void exitWhileLoop(WhileLoopContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.booleanOperand].
  /// [ctx] the parse tree
  void enterBooleanOperand(BooleanOperandContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.booleanOperand].
  /// [ctx] the parse tree
  void exitBooleanOperand(BooleanOperandContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.booleanExpression].
  /// [ctx] the parse tree
  void enterBooleanExpression(BooleanExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.booleanExpression].
  /// [ctx] the parse tree
  void exitBooleanExpression(BooleanExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.ifStatement].
  /// [ctx] the parse tree
  void enterIfStatement(IfStatementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.ifStatement].
  /// [ctx] the parse tree
  void exitIfStatement(IfStatementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.elseBlock].
  /// [ctx] the parse tree
  void enterElseBlock(ElseBlockContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.elseBlock].
  /// [ctx] the parse tree
  void exitElseBlock(ElseBlockContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.ifBlock].
  /// [ctx] the parse tree
  void enterIfBlock(IfBlockContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.ifBlock].
  /// [ctx] the parse tree
  void exitIfBlock(IfBlockContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void enterStringLengthExpression(StringLengthExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void exitStringLengthExpression(StringLengthExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.mathOperand].
  /// [ctx] the parse tree
  void enterMathOperand(MathOperandContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.mathOperand].
  /// [ctx] the parse tree
  void exitMathOperand(MathOperandContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void enterReadFunctionExpression(ReadFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void exitReadFunctionExpression(ReadFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void enterMathFunctionExpression(MathFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void exitMathFunctionExpression(MathFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.declAssignStatement].
  /// [ctx] the parse tree
  void enterDeclAssignStatement(DeclAssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.declAssignStatement].
  /// [ctx] the parse tree
  void exitDeclAssignStatement(DeclAssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.assignStatement].
  /// [ctx] the parse tree
  void enterAssignStatement(AssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.assignStatement].
  /// [ctx] the parse tree
  void exitAssignStatement(AssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.writeStatement].
  /// [ctx] the parse tree
  void enterWriteStatement(WriteStatementContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.writeStatement].
  /// [ctx] the parse tree
  void exitWriteStatement(WriteStatementContext ctx);

  /// Enter a parse tree produced by [CFloor6Parser.mathExpression].
  /// [ctx] the parse tree
  void enterMathExpression(MathExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor6Parser.mathExpression].
  /// [ctx] the parse tree
  void exitMathExpression(MathExpressionContext ctx);
}