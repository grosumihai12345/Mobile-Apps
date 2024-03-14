import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/widgets/weather_list/weather_list.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 28, 23, 60),
              Color.fromARGB(255, 25, 23, 47)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                child: Text(
                  AppLocalizations.of(context)!.weatherLabel,
                  style: const TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'SFPRODISPLAY',
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CupertinoSearchTextField(
                  style: const TextStyle(color: Colors.grey),
                  backgroundColor: const Color.fromARGB(178, 14, 4, 27),
                  itemColor: Colors.grey,
                  suffixMode: OverlayVisibilityMode.never,
                  placeholder: AppLocalizations.of(context)!.searchPlaceholder,
                ),
              ),
              Expanded(child: WeatherList()),
            ],
          ),
        ),
      ),
    );
  }
}
