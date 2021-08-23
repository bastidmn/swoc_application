import 'package:flutter/material.dart';

enum Language {
  LA,
  EN,
  FR,
  IT,
  GRC,
}

class LanguageHelper {
  static String getString(Language lang) {
    switch (lang) {
      case Language.LA:
        return 'LA';
      case Language.EN:
        return 'EN';
      case Language.FR:
        return 'FR';
      case Language.IT:
        return 'IT';
      case Language.GRC:
        return 'GRC';
    }
  }

  static Language getLanguage(String string) {
    switch (string) {
      case 'LA':
        return Language.LA;
      case 'EN':
        return Language.EN;
      case 'FR':
        return Language.FR;
      case 'IT':
        return Language.IT;
      case 'GRC':
        return Language.GRC;
    }
  }

  static Color getLanguageColor(Language lang) {
    switch (lang) {
      case Language.LA:
        return Color(0xFFE53935);
        break;
      case Language.EN:
        return Color(0xFF388E3C);
      case Language.FR:
        return Color(0xFF3949AB);
      case Language.IT:
        return Color(0xFFFDD835);
      case Language.GRC:
        return Color(0xFF7B1FA2);
    }
  }
}
