import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app/pages/weather_page.dart';
import 'package:weather_app/utils/colors_utils.dart';

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
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: Colors.white,
          secondary: AppColors.secondary,
          onSecondary: AppColors.primary,
          error: AppColors.error,
          onError: Colors.white,
          background: AppColors.background,
          onBackground: Colors.white,
          surface: AppColors.surface,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: AppColors.background,
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
          fillColor: AppColors.fillColor,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
        cupertinoOverrideTheme: const CupertinoThemeData(
          primaryColor: AppColors.background,
        ),
      ),
      home: const WeatherPage(),
    );
  }
}
