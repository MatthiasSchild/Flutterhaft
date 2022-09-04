import 'package:flutter/services.dart';

class NumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final isOk = RegExp('^-?\\d*\$').hasMatch(newValue.text);
    return isOk ? newValue : oldValue;
  }
}

class EuroInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final isOk = RegExp('^-?\\d{0,9}[,.]?\\d{0,2}\$').hasMatch(newValue.text);
    return isOk ? newValue : oldValue;
  }
}