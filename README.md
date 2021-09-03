# country_code_conversion

Currently support 54 languages.

## Usage
```$dart
import 'package:country_code_conversion/country_code_conversion.dart';
```

```$dart
final countryCodeConversion = CountryCodeConversion();
String? name = countryCodeConversion.getDisplayLanguageByCode("vi-VN");
String? nameE = countryCodeConversion.getEnglishDisplayLanguageByCode("vi-VN");
String? code = countryCodeConversion.getLanguageCodeByName("Tiếng Việt");
String? codeE = countryCodeConversion.getLanguageCodeByName("Vietnamese");

print(name); // Tiếng Việt
print(nameE); // Vietnamese
print(code); // vi-VN
print(codeE); // vi-VN
```