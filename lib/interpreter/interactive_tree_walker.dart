import 'package:antlr4/antlr4.dart';

class InteractiveTreeWalker {
  final ParseTreeListener _listener;
  final ParseTree _parseTree;

  InteractiveTreeWalker(this._listener, this._parseTree);

  Iterable<ParseTree> walkIncrementally() sync* {
    yield* _walkHelper(_parseTree);
  }

  Iterable<ParseTree> _walkHelper(ParseTree t) sync* {
    if (t is ErrorNode) {
      _listener.visitErrorNode(t);
      return;
    } else if (t is TerminalNode) {
      _listener.visitTerminal(t);
      return;
    }
    final r = t as RuleNode;
    enterRule(_listener, r);
    yield t;
    final n = r.childCount;
    for (int i = 0; i < n; i++) {
      yield *_walkHelper(r.getChild(i)!);
    }
    exitRule(_listener, r);
  }

  void enterRule(ParseTreeListener listener, RuleNode r) {
    final ctx = r.ruleContext as ParserRuleContext;
    listener.enterEveryRule(ctx);
    ctx.enterRule(listener);
  }

  void exitRule(ParseTreeListener listener, RuleNode r) {
    final ctx = r.ruleContext as ParserRuleContext;
    ctx.exitRule(listener);
    listener.exitEveryRule(ctx);
  }
}