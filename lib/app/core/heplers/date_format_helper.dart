import 'package:intl/intl.dart'; // Import the intl package

class DateFormatHelper {
  // Format a string date to a custom string format
  static String formatDateTime(String dateString, {String format = 'MMM d, y'}) {
    // Parse the string date into a DateTime object
    DateTime dateTime = DateTime.parse(dateString);

    // Use DateFormat from the intl package to format the date
    return DateFormat(format).format(dateTime);
  }
}