
import 'package:cfloor_flutter/lesson_progression_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lesson_progression_store_test.mocks.dart';

@GenerateMocks([SharedPreferencesAsync])
main() {
  test('indicates when lesson was marked completed', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    const id = 1;
    store.markComplete(id);

    expect(store.hasCompletedLesson(id), true);
  });

  test('indicates when lesson has not been marked completed', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    expect(store.hasCompletedLesson(2), false);
  });

  test('reflects progress loaded from shared preferences', () async {
    final sharedPreferences = MockSharedPreferencesAsync();
    const ids = [1, 2, 3];
    when(sharedPreferences.getStringList(any)).thenAnswer((_) => Future.value(ids.map((id) => '$id').toList()));
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    await store.load();

    for(final id in ids) {
      expect(store.hasCompletedLesson(id), true);
    }
  });

  test('does not throw if no lesson history is in shared preferences', () async {
    final sharedPreferences = MockSharedPreferencesAsync();
    when(sharedPreferences.getStringList(any)).thenAnswer((_) => Future.value(null));
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    await store.load();

    // if we made it past load with no exceptions then we're good
  });

  test('notifies listeners when marking a lesson as complete', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);
    var wasCalled = false;
    void listener() { wasCalled = true; }
    store.addListener(listener);

    store.markComplete(4);

    expect(wasCalled, true);
  });

  test('saves progress to shared preferences when marking a lesson as complete', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    const id = 99;
    store.markComplete(id);

    verify(sharedPreferences.setStringList(any, argThat(contains('$id'))));
  });

  test('lists lesson 1 as first incomplete when no lessons have been completed', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);

    expect(store.calculateFirstIncompleteLesson(), 1);
  });

  test('lists lowest gap in ids when asked for first incomplete lesson', () {
    final sharedPreferences = MockSharedPreferencesAsync();
    final store = LessonProgressionStore(sharedPreferences: sharedPreferences);
    store.markComplete(1);
    store.markComplete(3);

    expect(store.calculateFirstIncompleteLesson(), 2);
  });
}