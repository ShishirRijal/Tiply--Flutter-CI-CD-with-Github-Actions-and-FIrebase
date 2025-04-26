import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tiply/main.dart';

void main() {
  testWidgets('Main app loads correctly', (WidgetTester tester) async {
    // Build the main app and trigger a frame
    await tester.pumpWidget(const TipCalculatorApp());

    // Verify that the TipCalculatorView is rendered
    expect(find.text('Tiply'), findsOneWidget);

    expect(find.byType(TextField), findsOneWidget); // Bill input field
  });
}
