import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/widgets/weather_list/weather_list.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var localization = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(
              -0.2,
              -0.4,
            ),
            radius: 0.6,
            colors: [
              theme.colorScheme.primary.withOpacity(0.0),
              theme.colorScheme.secondary,
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
                  horizontal: 32.0,
                  vertical: 16.0,
                ),
                child: Text(localization.weatherLabel,
                    style: theme.textTheme.displayLarge),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CupertinoSearchTextField(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  style: theme.textTheme.bodyMedium,
                  backgroundColor: theme.inputDecorationTheme.fillColor,
                  itemColor: theme.textTheme.bodyMedium!.color!,
                  suffixMode: OverlayVisibilityMode.never,
                  prefixInsets: const EdgeInsets.all(6.0),
                  placeholder: localization.searchPlaceholder,
                  placeholderStyle:
                      theme.textTheme.bodyMedium?.copyWith(fontSize: 18),
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
