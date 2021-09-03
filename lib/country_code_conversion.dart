library country_code_conversion;

import 'languages.dart';

class CountryCodeConversion {
  /// get display name language by code.
  String? getDisplayLanguageByCode(String languageCode) {
    if (languageCode.isEmpty) {
      return null;
    }

    if (languages.containsKey(languageCode)) {
      final String? displayLang = languages[languageCode]?.first;
      return displayLang;
    }

    return null;
  }

  /// get display name English language by code.
  String? getEnglishDisplayLanguageByCode(String languageCode) {
    if (languageCode.isEmpty) {
      return null;
    }

    if (languages.containsKey(languageCode)) {
      final String? displayLang = languages[languageCode]?.last;
      return displayLang;
    }

    return null;
  }

  /// get language code by language name.
  String? getLanguageCodeByName(String languageName) {
    if (languageName.isEmpty) {
      return null;
    }

    String? languageCode;
    for (String key in languages.keys) {
      for (String name in languages[key]!) {
        if (languageName == name) {
          languageCode = key;
          return languageCode;
        }
      }
    }

    return languageCode;
  }
}
