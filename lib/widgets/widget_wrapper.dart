import 'package:flutter/widgets.dart';
import 'package:showcaseview/showcaseview.dart';

typedef WidgetWrapper = Widget Function(Widget child,);

Widget _defaultWidgetWrapper(Widget child) => child;

const WidgetWrapper defaultWidgetWrapper = _defaultWidgetWrapper;

WidgetWrapper makeShowcaseWrapper(GlobalKey key, String description) => (Widget child) => Showcase(
  key: key,
  description: description,
  child: child,
);