import 'package:flutter/material.dart';
import '../cfloor1_virtual_machine/memory.dart';

class MemoryView extends StatelessWidget {
  final CFloor1Memory memory;

  const MemoryView({super.key, required this.memory});

  @override
  Widget build(BuildContext context) {
    final entries = memory.variableValues.entries.toList();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: entries.length,
      itemBuilder: (context, i) => Card(
        child: Text('${entries[i].key}: ${entries[i].value}')
      ),
    );
  }
}
