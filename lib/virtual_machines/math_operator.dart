
enum MathOperator {
  plus,
  minus,
  times,
  divide,
  modulo
  ;
  static const bySymbol = {
    '+': MathOperator.plus,
    '-': MathOperator.minus,
    '*': MathOperator.times,
    '/': MathOperator.divide,
    '%': MathOperator.modulo,
  };
}
