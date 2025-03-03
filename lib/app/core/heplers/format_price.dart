class FormatPrice {
  static String formatPrice(dynamic price) {
    if (price == null) return "";
    // تحويل السعر إلى رقم
    double numericPrice = double.tryParse(price.toString()) ?? 0.0;

    if (numericPrice >= 1000000) {
      return "${(numericPrice / 1000000).toStringAsFixed(1)} M"; // مليون
    } else if (numericPrice >= 1000) {
      return "${(numericPrice / 1000).toStringAsFixed(1)} K"; // ألف
    } else {
      return numericPrice.toString(); // أقل من ألف
    }
  }
}
