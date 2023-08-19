import '../data_type.dart';
import '../text_interval.dart';
import 'assignment.dart';
import 'boolean_expression.dart';

class ForLoop {
  final TextInterval textRange;
  final BooleanExpression condition;
  final Assignment initialAssignment;
  final CompositeDataType initialAssignmentDestinationType;
  final Assignment incrementalAssignment;

  ForLoop(this.textRange, this.condition, this.initialAssignment, this.initialAssignmentDestinationType, this.incrementalAssignment);
}