import 'package:cfloor_flutter/lessons/lessons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../lesson_progression_store.dart';
import 'navigation_drawer.dart';

class LessonProgressionView extends StatelessWidget {
  const LessonProgressionView({super.key});

  @override
  Widget build(BuildContext context) {
    final lessonProgressionStore = context.watch<LessonProgressionStore>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CFloor Lessons',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Column(
                children: [
                  Text('Level 1', style: Theme.of(context).textTheme.headlineLarge,),
                  Row(
                    children: allLessons.values.map((lesson) {
                      final isUnlocked = lesson.prerequisiteLessonId == null || lessonProgressionStore.hasCompletedLesson(lesson.prerequisiteLessonId!);
                      final isComplete = lessonProgressionStore.hasCompletedLesson(lesson.id);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: isUnlocked ? () {
                            // Navigate to lesson
                            context.go('/lessons/${lesson.id}');
                          } : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isComplete ? Theme.of(context).colorScheme.secondary : (isUnlocked ? Theme.of(context).primaryColor : Colors.grey),
                            foregroundColor: isComplete ? Theme.of(context).colorScheme.onSecondary : (isUnlocked ? Theme.of(context).colorScheme.onPrimary : Colors.black),
                          ),
                          child: Row(
                            children: [
                              if(isComplete) const Icon(Icons.check, color: Colors.white,),
                              if(!isComplete && !isUnlocked) const Icon(Icons.lock,),
                              if(isUnlocked) const SizedBox(width: 4),
                              Text('Lesson ${lesson.id}'),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text('Level 2', style: Theme.of(context).textTheme.headlineLarge,),
                  const Text('Coming soon!'),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: const CFloorNavigationDrawer(),
    );
  }
}
