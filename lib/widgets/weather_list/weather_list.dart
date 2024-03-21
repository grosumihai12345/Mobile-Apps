import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_list/weather_item.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({super.key, required this.weatherList});
  final List<Weather> weatherList;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
        itemCount: weatherList.length,
        itemBuilder: (ctx, index) {
          if (weatherList.isEmpty) {
            return const CircularProgressIndicator();
          } else {
            return WeatherItem(
              weatherList[index],
              textStyle: TextStyle(
                color: theme.textTheme.bodyMedium!.color,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            );
          }
        });
  }
}
