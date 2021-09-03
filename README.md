# country_code_conversion

Currently support 54 languages.

## Usage
```$dart
import 'package:country_code_conversion/country_code_conversion.dart';
```

```$dart
final countryCodeConversion = CountryCodeConversion();
String? name = await countryCodeConversion.getDisplayLanguageByCode("vi-VN");
String? nameE = await countryCodeConversion.getEnglishDisplayLanguageByCode("vi-VN");
String? code = await countryCodeConversion.getLanguageCodeByName("Tiếng Việt");
String? codeE = await countryCodeConversion.getLanguageCodeByName("Vietnamese");
```