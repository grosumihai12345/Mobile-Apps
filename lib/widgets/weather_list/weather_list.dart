import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_list/weather_item.dart';

class WeatherList extends StatelessWidget {
  WeatherList({super.key});
  final List<Weather> weatherList = [
    Weather(
      location: 'Iasi',
      temperature: 19,
      temperatureMin: 10,
      temperatureMax: 21,
      weatherType: WeatherType.rainyMoon,
    ),
    Weather(
      location: 'Botosani',
      temperature: 14,
      temperatureMin: 3,
      temperatureMax: 15,
      weatherType: WeatherType.zap,
    ),
    Weather(
      location: 'Craiova',
      temperature: 16,
      temperatureMin: 3,
      temperatureMax: 25,
      weatherType: WeatherType.wind,
    ),
    Weather(
      location: 'Botosani',
      temperature: 14,
      temperatureMin: 3,
      temperatureMax: 15,
      weatherType: WeatherType.zap,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
      itemCount: weatherList.length,
      itemBuilder: (ctx, index) => WeatherItem(
        weatherList[index],
        textStyle: TextStyle(
          color: theme.textTheme.bodyMedium!.color,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
