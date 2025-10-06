import 'package:cfloor_flutter/lessons/lessons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../lesson_progression_store.dart';

class CFloorNavigationDrawer extends StatelessWidget {
  const CFloorNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final lessonProgressionStore = context.watch<LessonProgressionStore>();
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
              child: Text(
                'CFloor',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('Sandbox'),
            onTap: () {
              context.go('/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Lessons Overview'),
            onTap: () {
              context.go('/lessons');
            },
          ),
          // add a tile for each lesson, only enable if previous lesson is completed
          ...allLessons.values.map((lesson) => ListTile(
            leading: lessonProgressionStore.hasCompletedLesson(lesson.id)
                ? Icon(Icons.check, color: Theme.of(context).colorScheme.secondary)
                : lesson.prerequisiteLessonId == null || lessonProgressionStore.hasCompletedLesson(lesson.prerequisiteLessonId!)
                  ? Icon(Icons.lock_open, color: Theme.of(context).primaryColor)
                  : const Icon(Icons.lock, color: Colors.grey),
            title: Text('Lesson ${lesson.id}'),
            onTap: lesson.prerequisiteLessonId == null || lessonProgressionStore.hasCompletedLesson(lesson.prerequisiteLessonId!)
                ? () {
                    Scaffold.of(context).closeDrawer();
                    context.go('/lessons/${lesson.id}');
                  }
                : null,
          )).toList(),
        ],
      ),
    );
  }
}
