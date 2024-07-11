// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:arknights_story_reader/main.dart';

void main() {
  testWidgets('Navigation smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that our counter starts at 0.
    expect(find.byIcon(Icons.home), findsOne);
    expect(find.byIcon(Icons.book), findsOne);
    expect(find.byIcon(Icons.account_circle_rounded), findsOne);
    expect(find.text('Home page'), findsOne);

    // await tester.tap(find.byIcon(Icons.home));
    // await tester.pumpAndSettle();
    // expect(find.text('Home page'), findsOne);

    // await tester.tap(find.byIcon(Icons.book));
    // await tester.pumpAndSettle();
    // expect(find.text('Home page'), findsNothing);
    // expect(find.text('Story page'), findsOne);

    // await tester.tap(find.byIcon(Icons.account_circle_rounded));
    // await tester.pumpAndSettle();
    // expect(find.text('Profile page'), findsOne);
  });
}
