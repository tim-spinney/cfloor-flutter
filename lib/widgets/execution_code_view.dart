import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compilers/text_interval.dart';

class ExecutionCodeView extends StatelessWidget {
  final String codeText;
  final TextInterval currentExpressionRange;

  const ExecutionCodeView({super.key, required this.codeText, required this.currentExpressionRange});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:[
          TextSpan(
              text: codeText.substring(0, currentExpressionRange.start),
              style: GoogleFonts.robotoMono(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
          TextSpan(
            text: codeText.substring(currentExpressionRange.start, currentExpressionRange.end + 1),
            style: GoogleFonts.robotoMono(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextSpan(
              text: codeText.substring(currentExpressionRange.end + 1),
              style: GoogleFonts.robotoMono(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
        ],
      ),
    );
  }
}