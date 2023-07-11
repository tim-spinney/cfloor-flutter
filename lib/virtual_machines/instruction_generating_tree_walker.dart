
import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';

abstract class InstructionGeneratingTreeWalker implements ParseTreeListener {
  VirtualMachine get virtualMachine;
  List<String> get semanticErrors;
}