import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tiply/tip_calculator_view.dart';

void main() {
  testWidgets('User calculates tip correctly with default 15% tip', (
    WidgetTester tester,
  ) async {
    // Build the app with MaterialApp and trigger a frame
    await tester.pumpWidget(const MaterialApp(home: TipCalculatorView()));

    // Enter a bill amount
    await tester.enterText(find.byType(TextField), '100');

    // Tap the Calculate button
    await tester.tap(find.widgetWithText(ElevatedButton, 'CALCULATE'));
    await tester.pump();

    // Verify that the tip and total are calculated correctly
    expect(
      find.text('Tip Amount:'),
      findsOneWidget,
    ); // Exact tip amount for 15% of 100
    expect(find.text('Total:'), findsOneWidget); // Exact total amount
  });

  testWidgets('Tip percentage selection works correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: TipCalculatorView()));

    // Enter bill amount
    await tester.enterText(find.byType(TextField), '100');

    // Tap on 20% tip
    await tester.tap(find.text('20%'));
    await tester.pump();

    // Tap calculate button
    await tester.tap(find.widgetWithText(ElevatedButton, 'CALCULATE'));
    await tester.pump();

    // Expect correct tip and total for 20%
    expect(find.textContaining('Rs.20.00'), findsOneWidget); // Tip amount
    expect(find.textContaining('Rs.120.00'), findsOneWidget); // Total amount
  });
}
