import 'package:cfloor_flutter/compilers/semantic_error_collector.dart';
import 'package:cfloor_flutter/compilers/text_interval.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7BaseListener.dart';
import '../../compilers/instruction_generating_tree_walker.dart';

import '../../generated/cfloor7/CFloor7Parser.dart';
import '../../language_core/data_type.dart';
import '../wrappers/function_definition.dart';

class FunctionCollectingTreeWalker extends CFloor7BaseListener {
  final List<FunctionDefinition> functions;
  final Map<String, TextInterval?> _functionNames = {};
  final SemanticErrorCollector errorCollector;

  FunctionCollectingTreeWalker(this.errorCollector, {List<FunctionDefinition>? builtInFunctions}) : functions = builtInFunctions ?? [] {
    _functionNames.addEntries(functions.map((fn) => MapEntry(fn.name, null)));
  }

  @override
  void exitFunctionDefinition(FunctionDefinitionContext ctx) {
    final name = ctx.Identifier()!.text!;

    // TODO: support overloading with different parameters
    if(_functionNames.containsKey(name)) {
      final existingLocation = _functionNames[name];
      if(existingLocation == null) {
        errorCollector.add('Error at ${ctx.textRange.startPosition}: the function name "$name" is already being used by a built-in function.');
      } else {
        errorCollector.add('Error at ${ctx.textRange.startPosition}: the function name "$name" is already being used by a function at ${existingLocation.startPosition}.');
      }
    }

    final parameters = <String, CompositeDataType>{};
    final parameterList = ctx.parameterList();
    if(parameterList != null) {
      for(final parameter in parameterList.parameters()) {
        parameters[parameter.Identifier()!.text!] = CompositeDataType.fromString(parameter.type()!.text!);
      }
    }
    final returnType = CompositeDataType.fromString(ctx.returnType()!.text);

    functions.add(FunctionDefinition(ctx.textRange, name, parameters, returnType));
    _functionNames[name] = ctx.textRange;
  }
}