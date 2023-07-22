import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';

const aboutCfloor = """
""";

const languageLevelArticles = {
  LanguageLevel.cfloor1: """
# Level 1: reading, writing, and arithmetic
All computer programs essentially do two things: basic math and moving numbers around. You can do very
sophisticated things with these two things, but if you're new to programming it helps to start simple
and build progressively.

CFloor was made specifically to help you with exactly that. Each level of the language builds on the
previous ones by adding a new concept. This level, the first one, provides you the minimum features you
need to write a useful program: reading (getting input from a user), writing (displaying output to a user),
and arithmetic (basic math).

Programs written in CFloor are made of _statements_, kind of like sentences in human language. To avoid
confusion with the decimal point in numbers, we use a semicolon (";") to mark the end of a statement instead
of a period. For example, the following program has three statements:

```
int x = readInt();
int y = x * x;
write(y);
```

Each statement tells the computer to do something. The first statement tells the computer to remember a
"variable" (think Algebra) called "x" and to ask the user of the program to for x's initial value. The
second statement tells the computer to remember a variable called "y" and to set its value to result
of multiplying x by itself. The third statement tells the computer to display the value of y to the user.
In short, this program lets the user determine the square of a number.

Note that each statement above matches one of the concepts in CFloor level 1: reading, arithmetic, and
writing. Variables are what let us tie these together, storing the results of reading or arithmetic so
we can use those results in more arithmetic or writing. Try pasting the program into the editor and
running it to see what reading and writing looks like. After that, try customizing the program. See
what happens when you use a different math operation, such as addition or subtraction. Try creating a
third variable, z, and make it some permutation of x and/or y.

## Declaring and Assigning Variables

You may have noticed in the sample program above that we don't just say that we want a variable named
"x" and that it should equal something. Instead, we say "int x" is equal to something. This is known as
"declaring" a variable, where we both say that we want a variable and what _type_ of variable we want. 
As you work your way through higher levels of CFloor, you'll encounter a variety of different types and
eventually build your own, but at this first level you only have one type: "int", which is short for
"integer". Integers are whole numbers, like 1, 2, 3, 4, 5, etc. They can be positive or negative, but
they can't have decimal points. If you try to assign a decimal number to an integer variable, the program
will round it down to the nearest whole number. For example, the statement `int x = 3 / 2;` will set x to
1, because it rounds down/chops off the fractional part of the number. While this may seem restrictive now,
you'll be given the option for decimal-type variables later, and you'll see that there are many situations
where limiting the computer to whole numbers has its advantages.

If you want to use a variable, you must declare it first. Once you've declared it, though, you can reuse
it as much as you like. The type with which you declared it sticks with the variable, so you don't need to
repeat it in subsequent uses. In the sample program above we created a second variable, y, but we could have
just as easily recycled x:

```
int x = readInt();
x = x * x;
write(x);
```

We didn't need to say `int x = x * x;` on line two because we already declared x as an integer.

You can use one or more lower case letters for your variable names. If you want to use multiple words in
the name, you can separate them with underscores. Capitals, numbers, and other symbols are not allowed.
For example, `int not_very_accurate_pi = 3;` is a valid name, while `int the_number_3 = 3;` and 
`int Bob = 1;` are not. One of the major challenges of programming is being able to understand someone 
else's code (or even your own code if you wrote it a long time ago), so I highly, highly recommend getting 
into the practice of using descriptive variable names.

## Math Operations

CFloor level 1 allows you to perform five math operations:

- addition (`+`)
- subtraction (`-`)
- multiplication (`*`)
- division (`/`)
- modulus (`%`)

Addition, subtraction, and multiplication will do what you expect from Math class. However, division is
a little less straightforward since CFloor 1 only works with whole numbers (integers). As noted above,
dividing two integers will round down the result to the nearest whole number. For example, `3 / 2` will
round down from 1.5 to 1. Because of this, it's helpful to have the modulus operator. Without decimals,
we can think of division as producing two numbers: a whole number and a fraction. For example, `11 / 4`
could give you `2.75`, or you could think of it as `2` and `3/4`. Modulus will give you the numerator 
of the fraction, in this case, `3`. 

## Math Operands

CFloor level 1 lets you perform math operations on three different types of things:

- variables
- literal numbers
- the results of other math operations, wrapped in parentheses

A few examples:
```
int z = x + y;
int a = 1 + 2;
int b = (x + y) * 2;
int c = a + (b * (3 / z));
```

Due to a limitation of the language, you must use parentheses to group operations if you
have more than two things you're combining. For example, you must do `(a + b) + c` instead
of `a + b + c`. This will change once I get around to implementing operator precedence
(multiplication coming before addition, etc.), but know that this limitation exists while
I focus on implementing more important things like loops and arrays.

## Reading and Writing

As shown above, CFloor also comes with ways to read input from the user and write output to the user. 
`readInt()` will prompt the user for a number, while `write(<your variable name>)` will display the value 
of whichever variable you put inside the parentheses. 

In addition to variables, you can also write text the user. You can use this feature to explain what you
are asking the user to input or what the meaning of a subsequent variable is. 

```
write("Enter a divisor.");
int divisor = readInt();
write("Enter a dividend.");
int dividend = readInt();
int quotient = dividend / divisor;
write("The quotient is:");
write(quotient);
int modulus = dividend % divisor;
write("The modulus is:");
write(modulus);
```

## Grammar

Just like a human language, CFloor has rules about how you can put statements together, or in other words,
proper "grammar". Here's a simplified version of the grammar:

- A program is made up of 1 or more statements.
- A statement could either declare a variable, assign a variable, or write. All
  of these must end in a semicolon.
- A declaration is an assignment with "int" in front of it (really any type, but "int" is the only type at this level).
- An assignment is a variable name, an equals sign, and either another variable name, some math formula, or "readInt()".
- A math formula is a math operand, a math operator, and another math operand, in that order.
- A math operator is either `+`, `-`, `*`, `/`, or `%`.
- A math operand is either a variable name, a number, or another math formula in parentheses.
- Writing consists of "write(", a variable name, number, or text in quotes, and ")".

Here's the full technical version:
```
MathOperator: '+' | '-' | '*' | '/' | '%' ;

Type: 'int' ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Identifier: [a-z][a-z_]* ;

program: statement+ EOF;

declAssignStatement: Type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression) ;

statement: writeStatement | assignStatement | declAssignStatement ;

readFunctionExpression: 'readInt()' ;
```

""",
  LanguageLevel.cfloor2: """
# Level 2: floats vs. ints
Note: each level builds on the last. If you haven't already, read about [Level 1](/help/language-levels/0).

## Floats

In CFloor level 1, you only had one data type - integers, or whole numbers. Level 2 introduces 
"floating point" numbers, or "floats" for short. Floats are numbers that can have decimal points,
like 1.5, 2.75, 3.14159, etc., as shown here:

```
float pi = 3.14;
float r = 3.0;
float area = pi * r * r;
```

## Type Conversion

The previous example used float-type variables exclusively, but what happens if we mix floats and
ints? The outcome has to be one type or the other, so our program needs to convert one of the types
to match the other. Since decimals are a superset of whole numbers, CFloor will automatically convert
any mix of floats and ints into a floating point result. Here are some examples:

```
float a = 1 + 2.5;
int x = 10;
float b = x / 4.0;
float c = a * x; 
```

`a`, `b`, and `c`, will have the values `3.5`, `2.5`, and `35.0`, respectively.

Caveat 1: CFloor will only convert at the point it needs to, not before. If you divide two integers and
store the result in a float, the program will use integer division (chopping off the decimal part), then
store the whole number result as a decimal. The statement `float y = 3 / 2;` will set y to 1.0. To avoid
this, you will want to make sure that at least one of the values involved in the math operation is a
float, either by using a float-type variable or writing a decimal number, such as `float y = 3.0 / 2;`.

Caveat 2: CFloor will not convert from float to int. If you try to assign a float to an int-type variable,
the editor will refuse to run your program. However, you do have some ways to convert a float to an int,
as detailed in the next section.

Caveat 3: The modulo operator (`%`) only works on integers. If you try to use it on a float, the editor
will refuse to run your program.

## Math Functions

CFloor level 2 comes with some mathematical _functions_. Similar to how you can write `y = f(x)` in Algebra,
CFloor provides some functions that take a number and transform it into another number. At level 2, you can
use the following functions:

- `floor(<number>)` - rounds a number down to the nearest whole number, producing an int
- `ceil(<number>)` - rounds a number up to the nearest whole number, producing an int
- `round(<number>)` - rounds a number to the nearest whole number, producing an int
- `sqrt(<number>)` - takes the square root of a number, producing a float
- `sin(<number>)` - takes the sine of a number, producing a float
- `cos(<number>)` - takes the cosine of a number, producing a float
- `tan(<number>)` - takes the tangent of a number, producing a float

Note: all three trigonometric functions work on radians. To make them easier to use, the variable "pi"
will be available automatically in all of your programs at level 2 and above.

Additionally, you can now use `readFloat()` to get a decimal number from the user in addition to `readInt()`.

Here's an example of how you can use these functions:

```
float x = readFloat();
float next_lowest = floor(x);
float next_highest = ceil(x);
float rounded_x = round(x);
float root_of_x = sqrt(x);
float sine_of_x = sin(x);
float cosine_of_x = cos(x);
float tangent_of_x = tan(x);
```

## Grammar

Level 2 does not contain any significant changes to the grammar of the language, other than allowing 
decimal numbers.

""",
  LanguageLevel.cfloor3: """
Note: each level builds on the last. If you haven't already, read about [Level 2](/help/language-levels/1).

# Level 3: Text Strings

Documentation coming soon!
""",
  LanguageLevel.cfloor4: """
Note: each level builds on the last. If you haven't already, read about [Level 3](/help/language-levels/2).

# Level 4: Booleans and Conditionals

Documentation coming soon!
"""
};

class HelpPage extends StatelessWidget {
  final LanguageLevel? languageLevel;

  const HelpPage({super.key, this.languageLevel});

  @override
  Widget build(BuildContext context) {
    final navIndex = languageLevel == null ? 0 : languageLevel!.index + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(languageLevel == null
            ? 'About CFloor'
            : 'About CFloor Language Level ${languageLevel!.index + 1}'),
      ),
      body: Row(
        children: [
          // TODO: replace with list of links; requiring icon doesn't work well for these topics
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                  label: Text('About CFloor'), icon: Icon(Icons.info)),
              NavigationRailDestination(label: Text(''), icon: Text('Level 1')),
              NavigationRailDestination(label: Text(''), icon: Text('Level 2')),
              NavigationRailDestination(label: Text(''), icon: Text('Level 3')),
            ],
            selectedIndex: navIndex,
            onDestinationSelected: (index) {
              if (index != navIndex) {
                context.push('/help/language-levels/${index - 1}');
              }
            },
          ),
          Expanded(
            child: Markdown(
              data: languageLevelArticles[languageLevel] ?? aboutCfloor,
              onTapLink: (text, href, title) {
                if(href != null) {
                  context.push(href);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
