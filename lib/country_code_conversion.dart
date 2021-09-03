library country_code_conversion;

import 'languages.dart';

class CountryCodeConversion {

  /// get display name language by code.
  Future<String?> getDisplayLanguageByCode(String languageCode) async {
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
  Future<String?> getEnglishDisplayLanguageByCode(String languageCode) async {
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
  Future<String?> getLanguageCodeByName(String languageName) async {
    if (languageName.isEmpty) {
      return Future.value(null);
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
