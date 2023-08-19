
enum ComparisonOperator {
  equal,
  notEqual,
  lessThan,
  lessThanOrEqual,
  greaterThan,
  greaterThanOrEqual
  ;
  static const bySymbol = {
    '==': ComparisonOperator.equal,
    '!=': ComparisonOperator.notEqual,
    '<': ComparisonOperator.lessThan,
    '<=': ComparisonOperator.lessThanOrEqual,
    '>': ComparisonOperator.greaterThan,
    '>=': ComparisonOperator.greaterThanOrEqual,
  };
}
