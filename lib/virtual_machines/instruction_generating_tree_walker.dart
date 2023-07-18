import 'package:antlr4/antlr4.dart';
import 'instruction.dart';
import 'virtual_machine.dart';
import 'virtual_memory.dart';
import 'data_type.dart';

abstract class InstructionGeneratingTreeWalker implements ParseTreeListener {
  final VirtualMachine virtualMachine;
  List<String> get semanticErrors;

  InstructionGeneratingTreeWalker(this.virtualMachine);
}

mixin RegisterManager {
  abstract final VirtualMachine virtualMachine;
  int nextRegister = 0;

  RegisterDataDestination allocateRegister(DataType dataType) => RegisterDataDestination(dataType, virtualMachine.memory, nextRegister++);
}

mixin InstructionGeneratorUtils on InstructionGeneratingTreeWalker {
  combineNumericDataTypes(DataType left, DataType right, Token startToken) {
    if(!_typeIsNumeric(left) || !_typeIsNumeric(right)) {
      semanticErrors.add('Type mismatch at ${startToken.line}:${startToken.charPositionInLine}: math operators only work on numbers.');
      throw Exception('Cannot combine non-numeric types');
    }
    if(left == DataType.float || right == DataType.float) {
      return DataType.float;
    } else {
      return DataType.int;
    }
  }

  ConstantDataSource sourceFromConstant(String numberText) {
    bool isInt = int.tryParse(numberText) != null;
    final value = double.parse(numberText);
    return ConstantDataSource(isInt ? DataType.int : DataType.float, value);
  }

  bool _typeIsNumeric(DataType type) => type == DataType.int || type == DataType.float;

  TextRange getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);
}