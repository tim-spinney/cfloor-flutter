import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonProgressionStore with ChangeNotifier {
  // Switch to a BitArray if performance/memory becomes an issue
  final _completedLessonIds = SplayTreeSet<int>();
  final SharedPreferencesAsync _sharedPreferences;

  LessonProgressionStore({SharedPreferencesAsync? sharedPreferences})
      : _sharedPreferences = sharedPreferences ?? SharedPreferencesAsync();

  bool hasCompletedLesson(int lessonId) {
    return _completedLessonIds.contains(lessonId);
  }

  void markComplete(int lessonId) {
    _completedLessonIds.add(lessonId);
    notifyListeners();
    _save();
  }

  int calculateFirstIncompleteLesson() {
    int lessonId = 1;
    for(final completedId in _completedLessonIds) {
      if(completedId == lessonId) {
        lessonId++;
      } else {
        break;
      }
    }
    return lessonId;
  }

  Future<void> load() async {
    final keysAsStrings = await _sharedPreferences.getStringList(_storageKey);
    if (keysAsStrings != null) {
      _completedLessonIds.clear();
      _completedLessonIds.addAll(keysAsStrings.map(int.parse));
      notifyListeners();
    }
  }

  void _save() async {
    final keysAsStrings = _completedLessonIds.map((id) => id.toString()).toList();
    await _sharedPreferences.setStringList(_storageKey, keysAsStrings);
  }

  static const _storageKey = 'completed_lessons';
}