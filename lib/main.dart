import 'package:cfloor_flutter/widgets/lesson_view.dart';
import 'package:go_router/go_router.dart';

import 'virtual_machines/language_level.dart';
import 'widgets/code_editor.dart';
import 'package:flutter/material.dart';

import 'widgets/help_page.dart';

void main() {
  runApp(const App());
}

final _router = GoRouter(
  initialLocation: '/lessons',
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
      path: '/lessons',
      builder: (context, state) => const LessonViewPage(),
    ),
  ]
);

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CFloor Editor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class EditorPage extends StatelessWidget {
  const EditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CFloor Editor',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const CodeEditor(),
    );
  }
}
