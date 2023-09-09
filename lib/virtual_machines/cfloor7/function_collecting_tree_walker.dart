import 'package:cfloor_flutter/generated/cfloor7/CFloor7BaseListener.dart';
import '../instruction_generating_tree_walker.dart';

import '../../generated/cfloor7/CFloor7Parser.dart';
import '../data_type.dart';
import '../wrappers/function_definition.dart';

class FunctionCollectingTreeWalker extends CFloor7BaseListener {
  final List<FunctionDefinition> functions = [];

  @override
  void exitFunctionDefinition(FunctionDefinitionContext ctx) {
    final name = ctx.Identifier()!.text!;
    final parameters = <String, CompositeDataType>{};
    final parameterList = ctx.parameterList();
    if(parameterList != null) {
      for(final parameter in parameterList.parameters()) {
        parameters[parameter.Identifier()!.text!] = CompositeDataType.fromString(parameter.type()!.text!);
      }
    }
    final returnType = CompositeDataType.fromString(ctx.returnType()!.text);
    functions.add(FunctionDefinition(ctx.textRange, name, parameters, returnType));
  }
}