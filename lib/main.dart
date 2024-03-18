import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/pages/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromARGB(
            255,
            107,
            40,
            131,
          ),
          onPrimary: Colors.white,
          secondary: Color.fromARGB(
            155,
            25,
            23,
            47,
          ),
          onSecondary: Colors.grey,
          error: Colors.red,
          onError: Colors.white,
          background: Color.fromARGB(
            255,
            28,
            23,
            60,
          ),
          onBackground: Colors.white,
          surface: Colors.grey,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(
          255,
          28,
          23,
          60,
        ),
        textTheme: ThemeData().textTheme.copyWith(
              displayLarge: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
              bodyLarge: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              bodyMedium: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Color.fromARGB(
            178,
            14,
            4,
            27,
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        cupertinoOverrideTheme: CupertinoThemeData(
          primaryColor: ThemeData().scaffoldBackgroundColor,
        ),
      ),
      home: const WeatherPage(),
    );
  }
}
