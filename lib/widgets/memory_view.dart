import 'package:flutter/material.dart';
import '../cfloor1_virtual_machine/memory.dart';

class MemoryView extends StatefulWidget {
  final CFloor1Memory memory;

  const MemoryView({super.key, required this.memory});

  @override
  State<MemoryView> createState() => _MemoryViewState();
}


class _MemoryViewState extends State<MemoryView> {
  bool _showRegisters = false;

  _setShowRegisters(bool showRegisters) {
    setState(() {
      _showRegisters = showRegisters;
    });
  }

  @override
  Widget build(BuildContext context) {
    final registers = widget.memory.registers.entries.toList();
    final namedVariables = widget.memory.variableValues.entries.toList();
    return Column(
      children: [
        Row(
          children: [
            const Text('Show Registers'),
            const SizedBox(width: 8,),
            Switch(
              value: _showRegisters,
              onChanged: _setShowRegisters,
            ),
          ],
        ),
        if(_showRegisters) Wrap(
          spacing: 4,
          runAlignment: WrapAlignment.start,
          children: [
            for (var i = 0; i < registers.length; i++)
              Card(
                child: Text('r${registers[i].key}: ${registers[i].value}'),
              ),
          ],
        ),
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
