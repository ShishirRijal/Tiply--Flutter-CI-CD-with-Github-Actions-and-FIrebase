class TipCalculator {
  static Map<String, double> calculate(double billAmount, double tipPercent) {
    final tip = billAmount * (tipPercent / 100);
    final total = billAmount + tip;
    return {'tip': tip, 'total': total};
  }
}
