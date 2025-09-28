import '../virtual_machines/virtual_machine.dart';

typedef LessonValidator = bool Function(VirtualMachine vm);

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

  Lesson({
    required this.id,
    required this.explanation,
    required this.initialCode,
    this.isEditable = false,
    this.showTutorial = false,
    required this.objectives,
  });
}

final allLessons = { for (final lesson in [lesson1, lesson2, lesson3]) lesson.id : lesson };

final lesson1 = Lesson(
  id: 1,
  explanation: '''
In this first lesson, we'll learn the fundamentals of how CFloor code works.
''',
  initialCode: '''
  int x = 2;
''',
  showTutorial: true,
  objectives: [
    LessonObjective(
      description: 'Run the code and see the result.',
      validator: (_) => true,
    ),
  ],
);

final lesson2 = Lesson(
  id: 2,
  explanation: '''
# Lesson 2: Variables
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
  objectives: [
    LessonObjective(
      description: 'Run the code and see the result.',
      validator: (_) => true,
    ),
  ],
);

final lesson3 = Lesson(
  id: 3,
  explanation: '''
# Lesson 3: Your First Program
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
  isEditable: true,
  objectives: [
    LessonObjective(
      description: 'Create a variable named "width".',
      validator: (vm) => vm.memory.isDefined('width'),
    ),
    LessonObjective(
      description: 'Create a variable named "height".',
      validator: (vm) => vm.memory.isDefined('height'),
    ),
    LessonObjective(
      description: 'Create a variable named "area".',
      validator: (vm) => vm.memory.isDefined('area'),
    ),
    LessonObjective(
      description: 'Set "area" equal to "width" multiplied by "height".',
      validator: (vm) {
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
);