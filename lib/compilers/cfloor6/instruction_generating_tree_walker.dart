import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6Parser.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6BaseListener.dart';
import '../wrappers/array_literal.dart';
import '../../language_core/boolean_operator.dart';
import '../built_in_globals.dart';
import '../comparison_operator.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import '../../language_core/data_type.dart';
import '../math_function.dart';
import '../math_operator.dart';
import '../../compilers/semantic_error_collector.dart';
import '../wrappers/assignment.dart';
import '../wrappers/boolean_expression.dart';
import '../wrappers/boolean_operand.dart';
import '../wrappers/expression.dart';
import '../wrappers/identifier.dart';
import '../wrappers/if_block.dart';
import '../wrappers/instructions.dart';
import '../wrappers/length_function_expression.dart';
import '../wrappers/math_expression.dart';
import '../wrappers/math_function_expression.dart';
import '../wrappers/math_operand.dart';
import '../wrappers/read_expression.dart';
import '../wrappers/string_literal.dart';
import '../wrappers/variable_accessor.dart';
import '../wrappers/while_loop.dart';
import '../wrappers/write_statement.dart';
import '../wrappers/array_initializer.dart';
import '../wrappers/for_loop.dart';
import '../generic/compiler.dart';

class CFloor6TreeWalker extends CFloor6BaseListener implements InstructionGenerator {
  late final GenericCompiler _compiler;

  @override
  final semanticErrorCollector = SemanticErrorCollector();

  @override
  get builtInVariables => builtInMathConstants;

  @override
  List<Instruction> get instructions => _compiler.topLevelInstructions;

  CFloor6TreeWalker() {
    _compiler = GenericCompiler(semanticErrorCollector, builtInVariables);
  }

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    final destinationType = CompositeDataType.fromString(ctx.type()!.text);
    _compiler.handleDeclAssignStatement(_toAssignment(ctx.assignment()!), destinationType);
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    _compiler.handleAssignStatement(_toAssignment(ctx.assignment()!));
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    _compiler.handleWriteStatement(_toWriteStatement(ctx));
  }

  @override
  void enterIfBlock(IfBlockContext ctx) {
    _compiler.handleEnteringIfBlock();
  }

  @override
  void exitIfBlock(IfBlockContext ctx) {
    _compiler.handleExitingIfBlock(_toIfBlock(ctx));
  }

  @override
  void enterIfStatement(IfStatementContext ctx) {
    _compiler.handleEnteringBranch();
  }

  @override
  void enterElseBlock(ElseBlockContext ctx) {
    _compiler.handleEnteringBranch();
  }

  @override
  void enterBlock(BlockContext ctx) {
    _compiler.handleEnteringBlock(ctx.textRange);
  }

  @override
  void exitBlock(BlockContext ctx) {
    _compiler.handleExitingBlock(ctx.textRange);
  }

  @override
  void enterWhileLoop(WhileLoopContext ctx) {
    _compiler.handleEnteringWhileLoop();
  }

  @override
  void exitWhileLoop(WhileLoopContext ctx) {
    _compiler.handleExitingWhileLoop(_toWhileLoop(ctx));
  }

  @override
  void enterForLoop(ForLoopContext ctx) {
    _compiler.handleEnteringForLoop(_toForLoop(ctx));
  }

  @override
  void exitForLoop(ForLoopContext ctx) {
    _compiler.handleExitingForLoop(_toForLoop(ctx));
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
    arrayIndexer: ctx.mathExpression() == null ? null : _toMathExpression(ctx.mathExpression()!),
  );

  WriteStatement _toWriteStatement(WriteStatementContext ctx) => WriteStatement(
    ctx.textRange,
    ctx.Number()?.text,
    ctx.variableAccessor() == null ? null : _toVariableAccessor(ctx.variableAccessor()!),
    ctx.StringLiteral() == null ? null : _toStringLiteral(ctx.StringLiteral()!),
  );

  Assignment _toAssignment(AssignmentContext ctx) => Assignment(
    ctx.textRange,
    _toVariableAccessor(ctx.variableAccessor()!),
    _toExpression(ctx.expression()!),
  );

  Expression _toExpression(ExpressionContext ctx) {
    if(ctx.readFunctionExpression() != null) {
      return _toReadExpression(ctx.readFunctionExpression()!);
    } else if(ctx.mathExpression() != null) {
      return _toMathExpression(ctx.mathExpression()!);
    } else if(ctx.StringLiteral() != null) {
      return _toStringLiteral(ctx.StringLiteral()!);
    } else if(ctx.booleanExpression() != null) {
      return _toBooleanExpression(ctx.booleanExpression()!);
    } else if(ctx.arrayInitializer() != null) {
      return _toArrayInitializer(ctx.arrayInitializer()!);
    }
    return _toArrayLiteral(ctx.arrayLiteral()!);
  }

  Identifier _toIdentifier(TerminalNode ctx) => Identifier(
    ctx.textRange,
    ctx.text!,
  );

  ReadExpression _toReadExpression(ReadFunctionExpressionContext ctx) => ReadExpression(
    ctx.textRange,
    ctx.text,
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

  WhileLoop _toWhileLoop(WhileLoopContext ctx) => WhileLoop(
    ctx.textRange,
    _toBooleanExpression(ctx.booleanExpression()!),
  );

  ForLoop _toForLoop(ForLoopContext ctx) => ForLoop(
    ctx.textRange,
    _toBooleanExpression(ctx.booleanExpression()!),
    _toAssignment(ctx.typedAssignment()!.assignment()!),
    DataType.byName(ctx.typedAssignment()!.type()!.text).toCompositeType(),
    _toAssignment(ctx.assignment()!),
  );

  ArrayInitializer _toArrayInitializer(ArrayInitializerContext ctx) => ArrayInitializer(
      ctx.textRange,
      int.parse(ctx.Number()!.text!),
      DataType.byName(ctx.primitive()!.text)
  );

  ArrayLiteral _toArrayLiteral(ArrayLiteralContext ctx) => ArrayLiteral(
    ctx.textRange,
    ctx.arrayLiteralElements().map((element) => _toArrayLiteralElement(element)).toList(),
  );

  ArrayLiteralElement _toArrayLiteralElement(ArrayLiteralElementContext ctx) => ArrayLiteralElement(
    ctx.Number()?.text,
    ctx.StringLiteral()?.text,
    ctx.BooleanLiteral()?.text,
    ctx.arrayLiteral() == null ? null : _toArrayLiteral(ctx.arrayLiteral()!),
    ctx.arrayInitializer() == null ? null : _toArrayInitializer(ctx.arrayInitializer()!),
  );
}