import 'package:cfloor_flutter/interpreter2/memory.dart';
import 'package:flutter/material.dart';

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
