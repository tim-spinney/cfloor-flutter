# CFloor

This project exists primarily as a practice/example application for both cross-platform app development and implementing programming languages. 

# The Language

CFloor uses [ANTLR](https://www.antlr.org/) to translate grammars into parsers. CFloor consists of an additive feature set - rather than being one language that lets programmers do everything, it consists of multiple levels/feature sets that provide an increasing number of tools for problem-solving as the programmer advances in skill. The definitions of each language level are in the /grammars folder.

# The App

In the spirit of streamlining the learning experience for new programmers, CFloor is paired with a simple Integrated Development Environment (IDE). As opposed to a text editor an a CLI, this IDE allows users to:
* Write and run code in a browser, on their desktop/laptop, or a tablet.
* Observe the flow of execution in their program by following which parts of the source code are highlighted as the program runs.
* Inspect the values of variables at each step of their program.

The application currently consists of a code sandbox and a help section, but will eventually include tutorials and exercises that guide users through the capabilities and different levels of CFloor.
