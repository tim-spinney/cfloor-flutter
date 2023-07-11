import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExecutionConsole extends StatefulWidget {
  final ConsoleState consoleState;
  final void Function(dynamic input) submitInput;

  const ExecutionConsole({
    super.key,
    required this.consoleState,
    required this.submitInput
  });

  @override
  State<ExecutionConsole> createState() => _ExecutionConsoleState();
}

class _ExecutionConsoleState extends State<ExecutionConsole> {
  final TextEditingController _inputController = TextEditingController();
  final _inputFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _inputController.dispose();
  }

  _onInputSubmitted() {
    if(_inputFormKey.currentState!.validate()) {
      final value = widget.consoleState.inputType == DataType.int
          ? int.parse(_inputController.text)
          : double.parse(_inputController.text);
      widget.submitInput(value);
      _inputController.clear();
    }
  }

  String? _validateInput(String? value) {
    if(value == null || value.isEmpty) {
      return 'Please enter a number.';
    }
    if(double.tryParse(value) == null) {
      return 'Please enter a valid number.';
    }
    if(widget.consoleState.inputType == DataType.int && int.tryParse(value) == null) {
      return 'Input to readInt() can only be a whole number.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:  widget.consoleState,
      builder: (context, value) => Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.consoleState.consoleOutput.length,
              itemBuilder: (context, index) => Text(
                widget.consoleState.consoleOutput[index],
                style: GoogleFonts.robotoMono(),
              ),
            ),
            if(widget.consoleState.isWaitingForInput) Form(
              key: _inputFormKey,
              child: Row(
                children: [
                  SizedBox(
                    width: 256,
                    child: TextFormField(
                      expands: false,
                      controller: _inputController,
                      decoration: const InputDecoration(
                        hintText: 'Enter a number here',
                      ),
                      validator: _validateInput,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onInputSubmitted,
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
