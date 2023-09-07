// Generated from grammars/CFloor7.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Parser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [CFloor7Parser].
abstract class CFloor7Listener extends ParseTreeListener {
  /// Enter a parse tree produced by [CFloor7Parser.parameter].
  /// [ctx] the parse tree
  void enterParameter(ParameterContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.parameter].
  /// [ctx] the parse tree
  void exitParameter(ParameterContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.parameterList].
  /// [ctx] the parse tree
  void enterParameterList(ParameterListContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.parameterList].
  /// [ctx] the parse tree
  void exitParameterList(ParameterListContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.functionDefinition].
  /// [ctx] the parse tree
  void enterFunctionDefinition(FunctionDefinitionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.functionDefinition].
  /// [ctx] the parse tree
  void exitFunctionDefinition(FunctionDefinitionContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.program].
  /// [ctx] the parse tree
  void enterProgram(ProgramContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.program].
  /// [ctx] the parse tree
  void exitProgram(ProgramContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.type].
  /// [ctx] the parse tree
  void enterType(TypeContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.type].
  /// [ctx] the parse tree
  void exitType(TypeContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.arrayLiteralElement].
  /// [ctx] the parse tree
  void enterArrayLiteralElement(ArrayLiteralElementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.arrayLiteralElement].
  /// [ctx] the parse tree
  void exitArrayLiteralElement(ArrayLiteralElementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.arrayLiteral].
  /// [ctx] the parse tree
  void enterArrayLiteral(ArrayLiteralContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.arrayLiteral].
  /// [ctx] the parse tree
  void exitArrayLiteral(ArrayLiteralContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.arrayInitializer].
  /// [ctx] the parse tree
  void enterArrayInitializer(ArrayInitializerContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.arrayInitializer].
  /// [ctx] the parse tree
  void exitArrayInitializer(ArrayInitializerContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.assignment].
  /// [ctx] the parse tree
  void enterAssignment(AssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.assignment].
  /// [ctx] the parse tree
  void exitAssignment(AssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.variableAccessor].
  /// [ctx] the parse tree
  void enterVariableAccessor(VariableAccessorContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.variableAccessor].
  /// [ctx] the parse tree
  void exitVariableAccessor(VariableAccessorContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.typedAssignment].
  /// [ctx] the parse tree
  void enterTypedAssignment(TypedAssignmentContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.typedAssignment].
  /// [ctx] the parse tree
  void exitTypedAssignment(TypedAssignmentContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.forLoop].
  /// [ctx] the parse tree
  void enterForLoop(ForLoopContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.forLoop].
  /// [ctx] the parse tree
  void exitForLoop(ForLoopContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.statement].
  /// [ctx] the parse tree
  void enterStatement(StatementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.statement].
  /// [ctx] the parse tree
  void exitStatement(StatementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.whileLoop].
  /// [ctx] the parse tree
  void enterWhileLoop(WhileLoopContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.whileLoop].
  /// [ctx] the parse tree
  void exitWhileLoop(WhileLoopContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.booleanOperand].
  /// [ctx] the parse tree
  void enterBooleanOperand(BooleanOperandContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.booleanOperand].
  /// [ctx] the parse tree
  void exitBooleanOperand(BooleanOperandContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.booleanExpression].
  /// [ctx] the parse tree
  void enterBooleanExpression(BooleanExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.booleanExpression].
  /// [ctx] the parse tree
  void exitBooleanExpression(BooleanExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.block].
  /// [ctx] the parse tree
  void enterBlock(BlockContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.block].
  /// [ctx] the parse tree
  void exitBlock(BlockContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.ifStatement].
  /// [ctx] the parse tree
  void enterIfStatement(IfStatementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.ifStatement].
  /// [ctx] the parse tree
  void exitIfStatement(IfStatementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.elseBlock].
  /// [ctx] the parse tree
  void enterElseBlock(ElseBlockContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.elseBlock].
  /// [ctx] the parse tree
  void exitElseBlock(ElseBlockContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.ifBlock].
  /// [ctx] the parse tree
  void enterIfBlock(IfBlockContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.ifBlock].
  /// [ctx] the parse tree
  void exitIfBlock(IfBlockContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void enterStringLengthExpression(StringLengthExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.stringLengthExpression].
  /// [ctx] the parse tree
  void exitStringLengthExpression(StringLengthExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.mathOperand].
  /// [ctx] the parse tree
  void enterMathOperand(MathOperandContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.mathOperand].
  /// [ctx] the parse tree
  void exitMathOperand(MathOperandContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void enterReadFunctionExpression(ReadFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.readFunctionExpression].
  /// [ctx] the parse tree
  void exitReadFunctionExpression(ReadFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void enterMathFunctionExpression(MathFunctionExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.mathFunctionExpression].
  /// [ctx] the parse tree
  void exitMathFunctionExpression(MathFunctionExpressionContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.declAssignStatement].
  /// [ctx] the parse tree
  void enterDeclAssignStatement(DeclAssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.declAssignStatement].
  /// [ctx] the parse tree
  void exitDeclAssignStatement(DeclAssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.assignStatement].
  /// [ctx] the parse tree
  void enterAssignStatement(AssignStatementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.assignStatement].
  /// [ctx] the parse tree
  void exitAssignStatement(AssignStatementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.writeStatement].
  /// [ctx] the parse tree
  void enterWriteStatement(WriteStatementContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.writeStatement].
  /// [ctx] the parse tree
  void exitWriteStatement(WriteStatementContext ctx);

  /// Enter a parse tree produced by [CFloor7Parser.mathExpression].
  /// [ctx] the parse tree
  void enterMathExpression(MathExpressionContext ctx);
  /// Exit a parse tree produced by [CFloor7Parser.mathExpression].
  /// [ctx] the parse tree
  void exitMathExpression(MathExpressionContext ctx);
}