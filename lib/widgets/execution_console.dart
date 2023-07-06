import 'package:cfloor_flutter/console_state.dart';
import 'package:flutter/material.dart';

class ExecutionConsole extends StatefulWidget {
  final ConsoleState consoleState;
  final bool isShowingErrors;
  final void Function(double input) submitInput;

  const ExecutionConsole({
    super.key,
    required this.consoleState,
    required this.isShowingErrors,
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
      final value = double.parse(_inputController.text);
      widget.submitInput(value);
      _inputController.clear();
    }
  }

  String? _validateInput(String? value) {
    if(value == null || value.isEmpty) {
      return 'Please enter a number';
    }
    if(double.tryParse(value) == null) {
      return 'Please enter a valid number';
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
              style: widget.isShowingErrors
                  ? const TextStyle(color: Colors.red)
                  : null,
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
