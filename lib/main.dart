import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/pages/weather_page.dart';
import 'package:weather_app/widgets/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: myThemeData,
      home: MyAp(),
    );
  }
}

final ThemeData myThemeData = ThemeData(
  primaryColor: const Color.fromARGB(0, 107, 40, 131),
  hintColor: const Color.fromARGB(155, 25, 23, 47),
  scaffoldBackgroundColor: const Color.fromARGB(255, 28, 23, 60),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Color.fromARGB(178, 14, 4, 27),
    hintStyle: TextStyle(color: Colors.grey),
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    primaryColor: Color.fromARGB(255, 28, 23, 60),
  ),
);
