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

Level 3 of CFloor introduces the ability to read and assemble your own strings of text. You've already
had the ability to use strings from the beginning, but they were limited to literals, or text that you
hard-coded into your program. For example, `write("Hello, world!");` would display the text "Hello, world!"
to the console, but you could not make a variable to hold "Hello, world!", nor could you combine variables
to make a string.

Starting with level 3, you can use "string" as a variable type: `string s = "This is a string!";`. You can
also read strings in from the user: `string s = readString();`.

## String Interpolation

Unlike ints and floats, strings of text are not numbers, so you can't use math operators on them. However,
CFloor does include a way to combine strings with any other type of variable, whether int, float, or another
string. The way CFloor enables this is called _string interpolation_, "interpolation" meaning "inserting
something in between other parts". In our case, we can insert variables in between parts of a string. For
example, we can insert the result of a calculation directly into a string that describes it:

```
write("Enter in a side length of a cube.");
float side_length = readFloat();
float volume = side_length * side_length * side_length;
float surface_area = 6 * side_length * side_length;
string message = "Your cube has a volume of \$volume and a surface area of \$surface area."; 
write(message);
```

The dollar signs (`\$`) in the second to last line tell the program that "volume" and "surface area" are the 
names of variables, and that it should splice in their current values when determining what the actual 
contents of our string should be. 

Side note: if you want to write an actual dollar sign in your string, you can do so by using two dollar signs
back to back: `write("The cost is \$\$5.00.");`. You can even combine this with interpolation:
`write("The cost is \$\$\$price.");`. The first two dollar signs will turn into a single dollar sign, while
`\$price` turns into the current value of the variable named "price".

## String Functions

Similar to the mathematical functions available at level 2, such as `floor()` and `sin()`, CFloor level 3
introduces a function that works on strings: `length(<string>)`. This function takes a string and returns
an integer that represents how long the string is.

## Grammar

Level 3 does not contain any significant changes to the grammar of the language, other than string interpolation.

""",
  LanguageLevel.cfloor4: """
Note: each level builds on the last. If you haven't already, read about [Level 3](/help/language-levels/2).

# Level 4: Booleans and Conditionals

With the first three levels of CFloor, you can write simple but effective calculations, taking input from the user,
performing math operations, and then writing text back to the user with the results. However, we're missing several
components that are essential to writing more complex programs. The first of these is the ability to make decisions
based on the results of our calculations, or in other words, to only run part of our program when certain conditions
have been met. To represent whether certain conditions have been met, we use a new type of variable called a
_boolean_.

## Booleans

Boolean variables are named after George Boole, who invented a system of logic that uses only two values: true and
false. At level 3 of CFloor, we can now use `true` and `false` as values in addition to numbers and strings. We can
also create boolean-typed variables: `bool b = true;`.

Similar to numbers, we can perform operations on our booleans. The three operations we can use on booleans are
`and`, `or`, and `not`. 

`not` is the simplest of the boolean operators. It takes whatever value it's given and flips it to the opposite,
so `true` becomes `false` and `false` becomes `true`: `bool b = not true;` will set b to `false`.

`and` and `or` combine two boolean values into one. `and` will only return `true` if both of the values it's given
are `true`, while `or` will return `true` if either of the values it's given are `true`:

- true and true = true
- true and false = false
- false and true = false
- false and false = false

- true or true = true
- true or false = true
- false or true = true
- false or false = false

You can combine these using parentheses, just like with math operators:

```
bool is_wednesday = false;
bool is_raining = true;
bool is_mercury_in_retrograde = true;
bool should_stay_home = (is_wednesday and is_raining) or is_mercury_in_retrograde;
```

## Comparison Operators

In addition to boolean operators, we can also use comparison operators to compare two numbers and
produce a boolean result. The comparison operators are:

- `>` - greater than
- `<` - less than
- `>=` - greater than or equal to
- `<=` - less than or equal to
- `==` - equal to
- `!=` - not equal to

Note that the second to last one is two equal signs, not one. This is because we already use one 
equal sign to assign values to variables (i.e., make the left side equal to the right side), so 
we use `==` to say that we want to know _whether_ the two sides are equal.

Here are some examples of comparison operators in action:

```
int spiciness = readInt();
bool is_spicy = spiciness > 3;
bool is_not_too_spicy = spiciness != 5;
bool is_not_spicy_at_all = spiciness == 0;
```

## Conditionals

Boolean values are particularly useful for determining whether to run a section of our programs
or to choose between different sections of our program. In CFloor, we use the word `if` to
determine whether to run a section of our program. For example:

```
int x = readInt();
int y = readInt();
if (x > y) {
  write("x is greater than y!");
}
```

In this example, the word `if` is followed by something that produces a boolean and one or more
statements. We put the thing that produces the boolean in parentheses and the statements to run
in braces (`{` and `}`). If x turns out to be strictly greater than y, the program will write
"x is greater than y!" to the console, otherwise it will not write anything.

The word `else` lets us chain together `if` statements, so that instead of choosing whether or
not to run some code, we can choose between two different sections of code. For example:

```
int x = readInt();
if(x > 0) {
  write("Your number is positive.");
} else {
  write("Your number is not positive.");
}
```

We can even chain together if statements when we have more than two possible situations. In the
following example we have three possible _branches_ of code to follow: 

```
int spiciness = readInt();
if(spiciness > 4) {
  write("Too spicy!");
} else if(spiciness >= 2) {
  write("Just right.");
} else {
  write("Not spicy enough.");
}
```

This program will keep trying each if statement until it finds one that's true and run just that one. 
If none of them are true, it will run the else statement at the end. For example, a spiciness of 5 
would make the first condition true, meaning the program would write "Too spicy!" and then continue with
whatever code is after the "else" (if any). A spiciness of 3 would make the first condition false, so the 
code would continue to the second if statement, find that the condition is true, and write "Just right."

You can do anything inside of the braces that you could do outside of them, including writing more if 
statements. You may find this to be helpful in situations like the following:

```
write("Enter your age.");
int age = readInt();
if(age >= 18) {
  write("Do you have a VIP pass?");
  bool has_vip_pass = readBool();
  if(has_vip_pass) {
    string name = readString();
    write("Welcome to the party, \$name!");
  } else {
    write("Please wait in line.");
  }
} else {
  write("Sorry, you are not old enough to attend.");
}
```

In the previous example, we have logic that only applies to people who are 18 or older,
so we put our "has_vip_pass" check inside of the first if statement to avoid asking people
who aren't eligible either way. (Side note: in a more realistic scenario we would check
their name against a list of VIPs, but lists won't be available for several more levels.)

## Scope

Here's a problem to consider: if the statements inside of braces only run when under
certain conditions, what happens to variables declared in only one or some of the branches?
Consider the following program:

```
int x = readInt();
int y = readInt();
write("Enter in z-axis?");
bool is_three_dimensional = readBool();
if(is_three_dimensional) {
  int z = readInt();
}
```

What happens to `z` if the user inputs `false`? The answer is that the program doesn't
create a variable called `z` at all. This has implications for the rest of the program -
how can later statements use `z` if it may or may not exist? To avoid confusion and errors
resulting from this sort of situation, CFloor restricts where you can use variables. Each time
you use a set of braces, you create a new _scope_ for variables, or a section of code where
those variables are usable. You can still use variables from outside of your braces, but any
variables inside the braces will get cleaned up when you reach the ending brace. In the previous
example, we declare `x` and `y` outside of any braces, meaning they are available for the entire
rest of the program. However, we declare `z` inside of the `if` statement, meaning we can only
use `z` inside of that same `if`, not in an `else if` or `else` or after the `if` statement has
ended. If we have an `if` statement nested inside another, the inner `if` statement can use
anything from the outer `if` statement, but not vice versa.

```
int dimensions = readInt();
int x = readInt();
if(dimensions >= 2) {
  int y = readInt();
  if(dimensions == 3) {
    int z = readInt();
    float distance = sqrt((x * x) + ((y * y) + (z * z)));
    write("The distance from the origin is \$distance.");
  } else {
    float distance = sqrt((x * x) + (y * y));
    write("The distance from the origin is \$distance.");
  }
} else {
  write("The distance from the origin is \$x.");
}
```

In the previous example, `x` is available for the entire program, `y` is available in the
if statement but not the else at the end, and `z` is only available in the inner if statement,
not the else at the end, not the outer if, and not the inner else. 

You'll also notice that we declare `distance` multiple times, which previously was not possible.
Since `distance` gets cleaned up at the end of the braces, we can declare it again after we've
left the branch in which it was declared. If we want to use it across branches or from outside
the if statement, we need to declare it outside of the if statement:

``` 
int dimensions = readInt();
int x = readInt();
if(dimensions >= 2) {
  float distance = 0;
  int y = readInt();
  if(dimensions == 3) {
    int z = readInt();
    distance = sqrt((x * x) + ((y * y) + (z * z)));
  } else {
    distance = sqrt((x * x) + (y * y));
  }
  write("The distance from the origin is \$distance.");
} else {
  write("The distance from the origin is \$x.");
}
```

## Grammar

CFloor level 4 introduces a few changes to the grammar to incorporate if statements:

- A statement can be an "if block" in addition to the previous possibilities.
- An "if statement" is the word "if", followed by a boolean expression in parentheses, followed by 
  one or more statements inside of braces.
- An "if block" is one or more if statements separated by the word "else", optionally followed by 
  an "else" and one last set of statements inside of braces.

Here's the full technical version:
```
BinaryBooleanOperator: 'and' | 'or' ;

UnaryBooleanOperator: 'not' ;

BooleanLiteral: 'true' | 'false' ;

Comparator: '==' | '!=' | '<' | '<=' | '>' | '>=' ;

booleanOperand: BooleanLiteral | Identifier | '(' booleanExpression ')' ;

booleanExpression:
    UnaryBooleanOperator booleanOperand |
    mathOperand  Comparator mathOperand |
    booleanOperand (BinaryBooleanOperator booleanOperand)? ;
    
block: '{' statement+ '}' ;
ifStatement: 'if' '(' booleanExpression ')' block ;
elseBlock: 'else' block ;
ifBlock: ifStatement ('else' ifStatement)* elseBlock? ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock ;
```
"""
};

class HelpPage extends StatelessWidget {
  final LanguageLevel? languageLevel;

  const HelpPage({super.key, this.languageLevel});

  @override
  Widget build(BuildContext context) {
    final navIndex = languageLevel!.index;
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
              NavigationRailDestination(label: Text(''), icon: Text('Level 1')),
              NavigationRailDestination(label: Text(''), icon: Text('Level 2')),
              NavigationRailDestination(label: Text(''), icon: Text('Level 3')),
              NavigationRailDestination(label: Text(''), icon: Text('Level 4')),
            ],
            selectedIndex: navIndex,
            onDestinationSelected: (index) {
              if (index != navIndex) {
                context.push('/help/language-levels/$index');
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
