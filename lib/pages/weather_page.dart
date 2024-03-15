import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            center: const Alignment(-0.2, -0.4),
            radius: 0.6,
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
                  AppLocalizations.of(context)!.weatherLabel,
                  style: theme.textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CupertinoSearchTextField(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: theme.textTheme.bodyMedium!.color),
                  backgroundColor: theme.inputDecorationTheme.fillColor,
                  itemColor: theme.textTheme.bodyMedium!.color!,
                  suffixMode: OverlayVisibilityMode.never,
                  prefixInsets: const EdgeInsets.all(6.0),
                  placeholder: AppLocalizations.of(context)!.searchPlaceholder,
                  placeholderStyle: theme.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey, fontSize: 18),
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
