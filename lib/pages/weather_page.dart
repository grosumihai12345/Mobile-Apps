import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_list/weather_list.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(0.0, -0.3),
            radius: 0.4,
            colors: [
              theme.primaryColor,
              theme.hintColor,
            ],
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Text(
                  'Weather',
                  style: theme.textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CupertinoSearchTextField(
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.textTheme.bodyMedium!.color),
                  backgroundColor: theme.inputDecorationTheme.fillColor,
                  itemColor: theme.textTheme.bodyMedium!.color!,
                  suffixMode: OverlayVisibilityMode.never,
                  placeholder: 'Search for a city or airport',
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
