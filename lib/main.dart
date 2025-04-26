import 'package:flutter/material.dart';
import 'package:tiply/tip_calculator_view.dart';

void main() {
  runApp(const TipCalculatorApp());
}

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const TipCalculatorView(),
    );
  }
}
