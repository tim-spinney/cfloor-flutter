import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../virtual_machines/language_level.dart';

const _levelDescriptions = {
  LanguageLevel.cfloor1: 'Level 1: reading, writing, and arithmetic',
  LanguageLevel.cfloor2: 'Level 2: floats vs. ints',
  LanguageLevel.cfloor3: 'Level 3: strings',
  LanguageLevel.cfloor4: 'Level 4: booleans and conditionals',
  LanguageLevel.cfloor5: 'Level 5: while loops',
  LanguageLevel.cfloor6: 'Level 6: for loops',
  LanguageLevel.cfloor7: 'Level 7: functions',
};

class LanguageLevelControls extends StatelessWidget {
  final LanguageLevel languageLevel;
  final void Function(LanguageLevel?)? changeLanguageLevel;
  const LanguageLevelControls({super.key, required this.languageLevel, this.changeLanguageLevel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<LanguageLevel>(
          items: LanguageLevel.values.map((level) => DropdownMenuItem(value: level, child: Text(_levelDescriptions[level] ?? '???'))).toList(),
          onChanged: changeLanguageLevel,
          value: languageLevel,
        ),
        IconButton(
          tooltip: 'Click to read more about language levels and features!',
          onPressed: () {
            context.push('/help/language-levels/${languageLevel.index}');
          },
          icon: const Icon(Icons.help_outline),
        )
      ],
    );
  }
}