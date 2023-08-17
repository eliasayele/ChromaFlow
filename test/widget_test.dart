// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:chroma_flow/presentation/pages/chroma_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ChromaPage widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ChromaPage(),
      ),
    );

    // Verify that 'Hello there' text is displayed.
    expect(find.text('Hello there'), findsOneWidget);

    // Tap the ChromaPage to change the background color.
    await tester.tap(find.byType(ChromaPage));
    // Wait for animation to complete.
    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
  });
}
