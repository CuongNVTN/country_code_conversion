import 'package:country_code_conversion/country_code_conversion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    final countryCodeConversion = CountryCodeConversion();
    String? name = countryCodeConversion.getDisplayLanguageByCode("vi-VN");
    String? nameE = countryCodeConversion.getEnglishDisplayLanguageByCode("vi-VN");
    String? code = countryCodeConversion.getLanguageCodeByName("Tiếng Việt");
    String? codeE = countryCodeConversion.getLanguageCodeByName("Vietnamese");
    print(name);
    print(nameE);
    print(code);
    print(codeE);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Example"),
          ),
          body: Center(child: Text("CountryCodeConversion")),
        ),
      ),
    );
  }
}
