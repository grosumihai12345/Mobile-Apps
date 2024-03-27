import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_list/weather_list.dart';
import 'weather_page_view_model.dart';
import 'package:riverpod/riverpod.dart';
class WeatherPage extends StatefulWidget {
  const WeatherPage({
    super.key,
  });

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherPageViewModel viewModel = WeatherPageViewModel();

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
              FutureBuilder(
                future: viewModel.getWeatherData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    final List<Weather> weatherList =
                        snapshot.data as List<Weather>;
                    return Expanded(
                      child: WeatherList(weatherList: weatherList),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
