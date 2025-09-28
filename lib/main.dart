import 'package:cfloor_flutter/lesson_progression_store.dart';
import 'package:cfloor_flutter/widgets/lesson_view.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'virtual_machines/language_level.dart';
import 'widgets/code_editor.dart';
import 'package:flutter/material.dart';

import 'widgets/help_page.dart';

void main() async {
  final lessonProgressionStore = LessonProgressionStore();
  await lessonProgressionStore.load();
  runApp(
    ChangeNotifierProvider.value(
      value: lessonProgressionStore,
      child: const App(),
    ),
  );
}

_makeRouter(int initialLessonId) => GoRouter(
  initialLocation: '/lessons/$initialLessonId',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const EditorPage(),
    ),
    GoRoute(
      path: '/help',
      builder: (context, state) => const HelpPage(),
      routes: [
        GoRoute(
          path: 'language-levels/:level',
          builder: (context, state) => HelpPage(
              languageLevel: LanguageLevel.values[int.parse(state.pathParameters['level']!)]
          ),
        )
      ],
    ),
    GoRoute(
      path: '/lessons/:lessonId',
      builder: (context, state) => LessonViewPage(int.parse(state.pathParameters['lessonId']!)),
    ),
  ]
);

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final initialLessonId = context.select<LessonProgressionStore, int>((store) => store.calculateFirstIncompleteLesson());
    return MaterialApp.router(
      title: 'CFloor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      routerConfig: _makeRouter(initialLessonId),
    );
  }
}

