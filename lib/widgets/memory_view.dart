import 'package:cfloor_flutter/widgets/registers_view.dart';
import 'package:flutter/material.dart';
import '../virtual_machines/virtual_memory.dart';

class MemoryView extends StatelessWidget {
  final VirtualMemory memory;

  const MemoryView({super.key, required this.memory});

  @override
  Widget build(BuildContext context) {
    // TODO: make separate panel for each scope
    final namedVariables = memory.currentScope.expand((scope) => scope.entries).toList();
    return Column(
      children: [
        RegistersView(memory: memory),
        ListView.builder(
          shrinkWrap: true,
          itemCount: namedVariables.length,
          itemBuilder: (context, i) => Card(
              child: Text('${namedVariables[i].key}: ${namedVariables[i].value}')
          ),
        )
      ],
    );
  }
}
