import 'package:flutter_test/flutter_test.dart';
import 'package:tiply/tip_calculator.dart';

void main() {
  test('Correct tip and total for 100 bill and 15% tip', () {
    final result = TipCalculator.calculate(100.0, 15.0);
    expect(result['tip'], 15.0);
    expect(result['total'], 115.0);
  });

  test('Zero bill returns zero tip and total', () {
    final result = TipCalculator.calculate(0.0, 20.0);
    expect(result['tip'], 0.0);
    expect(result['total'], 0.0);
  });

  test('Handles floating point bills', () {
    final result = TipCalculator.calculate(23.75, 10.0);
    expect(result['tip']!.toStringAsFixed(2), '2.38');
    expect(result['total']!.toStringAsFixed(2), '26.13');
  });

  test('Handles all supported tip percentages', () {
    // Test 10% tip
    var result = TipCalculator.calculate(50.0, 10.0);
    expect(result['tip'], 5.0);
    expect(result['total'], 55.0);

    // Test 15% tip
    result = TipCalculator.calculate(50.0, 15.0);
    expect(result['tip'], 7.5);
    expect(result['total'], 57.5);

    // Test 20% tip
    result = TipCalculator.calculate(50.0, 20.0);
    expect(result['tip'], 10.0);
    expect(result['total'], 60.0);

    // Test 25% tip
    result = TipCalculator.calculate(50.0, 25.0);
    expect(result['tip'], 12.5);
    expect(result['total'], 62.5);
  });
}
