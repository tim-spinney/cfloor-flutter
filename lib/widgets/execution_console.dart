import 'package:cfloor_flutter/language_core/data_type.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _dataTypeDescription = {
  DataType.int: 'whole number',
  DataType.float: 'number',
  DataType.string: 'string',
};

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
      final value = switch(widget.consoleState.inputType) {
        DataType.int => int.parse(_inputController.text),
        DataType.float => double.parse(_inputController.text),
        _ => _inputController.text,
      };
      widget.submitInput(value);
      _inputController.clear();
    }
  }

  String? _validateInput(String? value) {
    if(value == null || value.isEmpty) {
      return 'Please enter a(n) ${_dataTypeDescription[widget.consoleState.inputType]}.';
    }
    if(widget.consoleState.inputType == DataType.float && double.tryParse(value) == null) {
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
                widget.consoleState.consoleOutput[index].message,
                style: GoogleFonts.robotoMono(
                  color: widget.consoleState.consoleOutput[index].isError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).colorScheme.onSurface,
                )
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
                      decoration: InputDecoration(
                        hintText: 'Enter a(n) ${_dataTypeDescription[widget.consoleState.inputType]} here',
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
