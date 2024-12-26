import 'package:cfloor_flutter/compilers/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:test/test.dart';

main() {
  test('has a compiler for each language level', () {
    for(final LanguageLevel level in LanguageLevel.values) {
      compileCFloor('int x = 0;', level);
      /* We are effectively expecting this not to throw any exceptions. Due to
         the transition to functions as the only legal top-level constructs at
         level 7, there is no one program that will compile successfully. We
         could make ranges or mappings of programs that will compile successfully
         at each level, but that's what the smoke tests are for. This test simply
         checks whether we can request compilation for each level, not whether
         each level is bug-free.
      */
    }
  });
}