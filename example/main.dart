import 'package:country_code_conversion/country_code_conversion.dart';

void main() {
  final countryCodeConversion = CountryCodeConversion();
  String? name = countryCodeConversion.getDisplayLanguageByCode("vi-VN");
  String? nameE =
      countryCodeConversion.getEnglishDisplayLanguageByCode("vi-VN");
  String? code = countryCodeConversion.getLanguageCodeByName("Tiếng Việt");
  String? codeE = countryCodeConversion.getLanguageCodeByName("Vietnamese");
  print(name);
  print(nameE);
  print(code);
  print(codeE);
}
