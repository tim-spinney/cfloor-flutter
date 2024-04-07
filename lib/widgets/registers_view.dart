import 'package:flutter/material.dart';

import '../virtual_machines/virtual_memory.dart';

class RegistersView extends StatefulWidget {
  final VirtualMemory memory;

  const RegistersView({super.key, required this.memory});

  @override
  State<RegistersView> createState() => _RegistersViewState();
}

class _RegistersViewState extends State<RegistersView> {
  bool _showRegisters = false;

  _setShowRegisters(bool showRegisters) {
    setState(() {
      _showRegisters = showRegisters;
    });
  }

  @override
  Widget build(BuildContext context) {
    final registers = widget.memory.registers.entries.toList();
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
        ]
    );
  }
}
