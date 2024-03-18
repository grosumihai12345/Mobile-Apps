import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/assets_utils.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem(
    this.weather, {
    super.key,
    required this.textStyle,
  });
  final Weather weather;
  final TextStyle textStyle;
  Widget _buildTemperatureAndWeatherIcon({
    required theme,
    required weather,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${weather.temperature}°',
          style: theme.textTheme.displayLarge?.copyWith(
            fontSize: 58.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          width: 100,
          child: Image.asset(
            weather.weatherType.iconPath,
          ),
        ),
      ],
    );
  }

  Widget _buildTemperaturesLocationWeatherType({
    required theme,
    required weather,
    required context,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'H:${weather.temperatureMax}° L:${weather.temperatureMin}°',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.start,
            ),
            Text(
              weather.location,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
        Text(
          weather.weatherType.description,
          style: textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AssetsUtils.bgCloudsImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTemperatureAndWeatherIcon(
              theme: Theme.of(context),
              weather: weather,
            ),
            _buildTemperaturesLocationWeatherType(
              theme: Theme.of(context),
              weather: weather,
              context: context,
            )
          ],
        ),
      ),
    );
  }
}
