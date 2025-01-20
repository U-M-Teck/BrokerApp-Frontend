import 'dart:ui';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../language/ar_eg.dart';
import '../language/en_us.dart';

class LocalizationHelper extends Translations {
  // Supported languages and locales
  static final languages = {
    Language.english: const Locale('en', 'US'),
    Language.arabic: const Locale('ar', 'EG')
  };

  static final locales = [
    languages[Language.english]!,
    languages[Language.arabic]!
  ];

  // Default language key for storage
  static const String _languageKey = 'selected_language';

  // Storage instance
  final GetStorage _storage = GetStorage();

  // Get the stored locale or fallback to default
  Locale get initialLocale {
    final savedLanguageCode = _storage.read<String>(_languageKey);
    if (savedLanguageCode != null) {
      return languages.values.firstWhere(
        (locale) => locale.languageCode == savedLanguageCode,
        orElse: () => languages[Language.english]!,
      );
    }
    return languages[Language.english]!;
  }

  // Check if the current language is Arabic
  bool isArabic() {
    return Get.locale?.languageCode == languages[Language.arabic]!.languageCode;
  }

  // Change the locale and save the selected language
  void changeLocale(Language language) {
    final newLocale = languages[language]!;
    Get.updateLocale(newLocale);
    _storage.write(_languageKey, newLocale.languageCode);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        languages[Language.arabic]!.languageCode: ar,
        languages[Language.english]!.languageCode: en,
      };
}

enum Language { arabic, english }
