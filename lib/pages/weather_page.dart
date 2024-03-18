import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/widgets/weather_list/weather_list.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              Theme.of(context).colorScheme.primary.withOpacity(0.0),
              Theme.of(context).colorScheme.secondary,
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
                child: Text(
                  'Weather',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: CupertinoSearchTextField(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                  ),
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                  backgroundColor:
                      Theme.of(context).inputDecorationTheme.fillColor,
                  itemColor: Theme.of(context).textTheme.bodyMedium!.color!,
                  suffixMode: OverlayVisibilityMode.never,
                  prefixInsets: const EdgeInsets.all(6.0),
                  placeholder: 'Search for a city or airport',
                  placeholderStyle:
                      Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
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
