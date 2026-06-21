import 'package:cfloor_flutter/compilers/compiler.dart';
import 'package:cfloor_flutter/compilers/wrappers/data_source.dart';
import 'package:cfloor_flutter/compilers/wrappers/instructions.dart';
import 'package:cfloor_flutter/language_core/data_type.dart';
import 'package:collection/collection.dart';

import '../virtual_machines/language_level.dart';
import '../virtual_machines/virtual_machine.dart';

typedef LessonValidator = bool Function(VirtualMachine vm, CompileResult compileResult);

class LessonObjective {
  final String description;
  final LessonValidator validator;

  LessonObjective({
    required this.description,
    required this.validator,
  });
}

class Lesson {
  final int id;
  final String explanation;
  final String initialCode;
  final bool isEditable;
  final bool showTutorial;
  final List<LessonObjective> objectives;
  final LanguageLevel level;
  final int? prerequisiteLessonId;

  Lesson({
    required this.id,
    required this.explanation,
    required this.initialCode,
    this.isEditable = true,
    this.showTutorial = false,
    required this.objectives,
    required this.level,
    this.prerequisiteLessonId,
  });
}

Map<int, Lesson> _byId(List<Lesson> lessons) => { for (final lesson in lessons) lesson.id : lesson };

final allLessons = _byId([tutorial, variableDeclarations, writeYourOwn, variableNames, consoleRead, consoleWrite, floatingPoint, floatingPointDivision]);

final lessonsByLevel = allLessons.values.groupFoldBy<LanguageLevel, List<Lesson>>(
  (lesson) => lesson.level,
  (group, lesson) => (group ?? [])..add(lesson)
);

final tutorial = Lesson(
  id: 1,
  explanation: '''
# Lesson 1.1: Using CFloor
In this first lesson, we'll learn the fundamentals of how CFloor code works.
''',
  initialCode: '''
  int x = 2;
''',
  showTutorial: true,
  isEditable: false,
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
      description: 'Run the code and see the result.',
      validator: (_, __) => true,
    ),
  ],
);

final variableDeclarations = Lesson(
  id: 2,
  explanation: '''
# Lesson 1.2: Variables
**Variables** are used to store information in a program. Consider how you use a calculator: you type in numbers and an operator and it gives you a result. You can use the result in your next calculation, but what if you want to save it for later? This problem comes up all the time in programming, which is why variables are one of the most basic building blocks of any program.

To make a variable in CFloor, you would write something like this:
```
int x = 2;
``` 
More generally, the pattern is:
```
<what kind of thing you're storing> <the name of your variable> = <what to put in the variable>;
```
Notice that we end the line with a semicolon (`;`). Think of this like ending a sentence with a period in English.

Below are several examples of creating variables. The first two show how to store a simple (or "literal" in programming terms) value in a variable. The next two show how to use variables in calculations. For now, we'll keep things simple - all our variables will be `int`s, i.e. whole numbers.

Try running the code to see how it works!
''',
  initialCode: '''
  int x = 2;
  int y = 4;
  int z = x + y;
  int bob = x * y;
''',
  isEditable: false,
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
      description: 'Run the code and see the result.',
      validator: (_, __) => true,
    ),
  ],
  prerequisiteLessonId: 1,
);

final writeYourOwn = Lesson(
  id: 3,
  explanation: '''
# Lesson 1.3: Your First Program
The previous two lessons demonstrated how to run existing code. Now it's your turn to write some code of your own!

Remember the pattern for creating a variable:
```
<what kind of thing you're storing> <the name of your variable> = <what to put in the variable>;
```
As a reminder, here's what the last line of the previous lesson's code looked like:
```
int bob = x * y;
```
In this lesson, you'll write a program that calculates the area of a rectangle. The formula for the area of a rectangle is:
```
area = width * height
```
To complete this lesson, you'll need to create three variables in the code editor below named "width", "height", and "area". You can assign any whole number to width and height, but area must be equal to width multiplied by height.
''',
  initialCode: '''

''',
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
      description: 'Create a variable named "width".',
      validator: (vm, _) => vm.memory.isDefined('width'),
    ),
    LessonObjective(
      description: 'Create a variable named "height".',
      validator: (vm, _) => vm.memory.isDefined('height'),
    ),
    LessonObjective(
      description: 'Create a variable named "area".',
      validator: (vm, _) => vm.memory.isDefined('area'),
    ),
    LessonObjective(
      description: 'Set "area" equal to "width" multiplied by "height".',
      validator: (vm, _) {
        final width = vm.memory.getVariableValue('width');
        final height = vm.memory.getVariableValue('height');
        final area = vm.memory.getVariableValue('area');
        if (width is int && height is int && area is int) {
          return area == width * height;
        }
        return false;
      },
    ),
  ],
  prerequisiteLessonId: 2,
);

final variableNames = Lesson(
  id: 4,
  explanation: '''
# Lesson 1.4: Variable Names
The previous lessons included variables with simple names like "width", "x", or "bob". However, there are times when we want to use multiple words in a variable name.

As you'll see in later exercises, good variable names are valuable. The most important question to ask yourself when naming a variable is, "How am I going to remember what this is for a month from now?" As a professional programmer you'll be expected to add features or fix bugs in code that was written months or years ago, and names of things will be your first touchpoint for figuring out what does what.

Different programming languages have different rules and conventions about what counts as a valid variable name, but most don't allow spaces. For now, we're going to keep things simple; you can only use lower-case letters plus the underscore (_, shift+minus sign) in CFloor variable names. All names in CFloor must start with a letter, but you can use the underscore where you would normally use spaces to separate words. This pattern is known as snake_case for the shape the names take (as opposed to the common alternative, CamelCase).

Give it a try by creating one or more variables with snake_case names. You have a blank canvas, but if you're looking for inspiration you might calculate the area of a square based on the length of its sides.   
''',
  initialCode: '''

''',
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
      description: 'Create a variable with an underscore (_) in its name.',
      validator: (vm, _) => vm.memory.currentScope.any((scope) => scope.keys.any((varName) => varName.contains('_')))
    )
  ],
  prerequisiteLessonId: 3,
);

final consoleRead = Lesson(
  id: 5,
  explanation: '''
# Lesson 1.5: User Input
So far we've learned how to set variables to literal values (e.g. `x = 2`) and to the result of math operations (e.g. `z = y + x`). Revisiting previous programs
you've written, you can calculate the area of any rectangle by updating the literals in your program. This is easy because 1. you're now a programmer and 2.
you know exactly where to update your code.

Neither of those are true in most situations. Consider the fact that you're using a program right now to read this text. Now imagine that instead of having a
text box to write your code in you had to edit a variable in the [source code](https://github.com/tim-spinney/cfloor-flutter). Can you find where that variable
is? The text box is a lot easier to use, right?

Writing your own Graphical User Interface (GUI) will require a lot more practice and learning, but the good news is that CFloor gives you simple and easy ways
to get input from and show messages to the user of your programs. We'll call those "reading" and "writing", respectively.

The starter code below demonstrates how to get a value from the user: we write `read_int()` in place of a literal or math operation. Try running the
starter code and you'll see a text box appear below the controls when you try to advance past that line. The program will then pause until you enter a valid number,
after which it will store the number you entered into the variable on the other side of the =.

You'll notice that while `read_int` follows the naming convention we covered in the last lesson, it has to be followed by a set of parentheses `()`. This is CFloor's
way of expressing that `read_int` _does_ something, in this case getting a value from the user. We call these "functions", similar to the functions you might be
used to from math classes - f(x), sin(), cos(), etc. - except that these functions can do more than just math.

Try using this to build a reusable calculator for the area of a rectangle. Instead of coding in literal values, get the user to enter in values for width and height. 
''',
  initialCode: '''
int width = read_int();
''',
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
        description: 'Read in two values.',
        validator: (vm, compileResult) => compileResult.instructions.whereType<ReadInstruction>().length >= 2
    )
  ],
  prerequisiteLessonId: 4,
);


final consoleWrite = Lesson(
  id: 6,
  explanation: '''
# Lesson 1.6: Writing Output
So far we've been using the list of variables in the output panel to look at program results. However, there are a few situations where we'd like to
print a message instead:
1. We want to present information in a specific order.
2. We want to show a message to the user that isn't just a variable (e.g. a prompt for what they should enter for the next `read_int`).
3. A variable's value changes over time and we want to show a snapshot of its current value.
4. Later in your journey, once you reach level four, you'll also have variables that only exist during part of the program which you way want to display before they disappear.

The `write` function is like the reverse of `read_int`. Instead of getting a value from the user and giving it to the program, it takes a value from the program and displays it to the user:
```
write(1234);
write(side_length);
write("Hello!");
```
You can `write` a number, a variable, or some text. To write text, we put the text in quotation marks to indicate that it's literal text and not the name of a variable.

Below is the code for calculating the volume of a box. Try adding `write` statements before each `read_int` to tell the user what number they should enter and once again
at the end to display the calculated volume.
''',
  initialCode: '''
  
int width = read_int();

int height = read_int();

int depth = read_int();
int volume = width * height * depth;

''',
  level: LanguageLevel.cfloor1,
  objectives: [
    LessonObjective(
        description: 'Read in three values.',
        validator: (vm, compileResult) => compileResult.instructions.whereType<ReadInstruction>().length >= 3
    ),
    LessonObjective(
        description: 'Write a message before each read_int.',
        validator: (vm, compileResult) {
          if(compileResult.instructions.length < 2) {
            return false;
          }
          for(var i = 1; i < compileResult.instructions.length; i++) {
            if(compileResult.instructions[i] is ReadInstruction && compileResult.instructions[i-1] is! WriteInstruction) {
              return false;
            }
          }
          return true;
        }
    ),
    LessonObjective(
        description: 'Write the variable named "volume".',
        validator: (vm, compileResult) =>
          compileResult.instructions.whereType<WriteInstruction>().any(
            (write) => write.source is VariableMemorySource && (write.source as VariableMemorySource).variableName == "volume"
          )
    ),
  ],
  prerequisiteLessonId: 5,
);

final floatingPoint = Lesson(
  id: 7,
  explanation: '''
# Lesson 2.1: 
Congratulations! You've graduated to level 2. Each time you complete the required lessons in one level you'll unlock new features in the next level.

With level 2, you now have access to decimal numbers, or more specifically, floating point numbers, usually referred to as to `float`s. We'll use these 
numbers to explore more advanced math compared to your previous lessons. 

The `float` type of variable is similar to but distinct from the `int` type you've been working with. This means that you'll need to tell the program whether you want
an `int` or a `float` when creating a variable.
 
As a warm-up for this new set of lessons, try creating one `int`-type variable and one `float`-type variable. Remember the formula for creating a variable: 
```
<what kind of thing you're storing> <the name of your variable> = <what to put in the variable>;
```
Since `float`s allow us to use decimal places, assign your `float`-type variable a decimal number.
''',
  initialCode: '''

''',
  level: LanguageLevel.cfloor2,
  objectives: [
    LessonObjective(
        description: 'Create an int-type variable.',
        validator: (vm, compileResult) => compileResult.instructions.any((instruction) => (instruction is AssignmentInstruction) && instruction.destination.dataType.dataType == DataType.int)
    ),
    LessonObjective(
        description: 'Create a float-type variable.',
        validator: (vm, compileResult) => compileResult.instructions.any((instruction) => (instruction is AssignmentInstruction) && instruction.destination.dataType.dataType == DataType.float)
    ),
    LessonObjective(
        description: 'Store a non-whole number in the float-type variable.',
        validator: (vm, compileResult) => vm.memory.currentScope.last.values.any((varValue) => varValue is double && varValue != varValue.truncateToDouble())
    ),
  ],
  prerequisiteLessonId: 6,
);

final floatingPointDivision = Lesson(
  id: 8,
  explanation: '''
# Lesson 2.2: 
The key difference between `int` and `float` is that `int`-type variables can only contain whole numbers, while `float`-type numbers can contain decimals. This affects not
just what literals you can store in them but also what happens when you divide two numbers. 

Consider `3 / 2` - the result is not a whole number, which means that the result doesn't fit in an `int`. So what happens in the following code?
```
int x = 3;
int y = 2;
int z = x / y;
```
We can see that `x` does not divide cleanly by `y`, but we're still telling CFloor to put the result into an `int` anyway. When this happens, CFloor will "truncate"
the result, meaning it discards the decimal part and only keeps the whole number portion. Note that this is not the same as rounding; 2.9999 will still truncate to 2.  

Run the code below and observe the differences in output.
''',
  initialCode: '''
int a = 3;
int b = 2;
int c = a / b;
float d = 3;
float e = 2;
float f = d / e;
float g = d / b;
''',
  isEditable: false,
  level: LanguageLevel.cfloor2,
  objectives: [
    LessonObjective(
      description: 'Run the code and see the result.',
      validator: (_, __) => true,
    ),
  ],
  prerequisiteLessonId: 7,
);