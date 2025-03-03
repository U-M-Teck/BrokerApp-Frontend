import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-digit characters
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');
    
    // Format the number with commas
    if (digits.isNotEmpty) {
      final numberFormat = NumberFormat('#,###');
      String newText = numberFormat.format(int.parse(digits));
      return TextEditingValue(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length),
      );
    }
    
    return newValue;
  }
}