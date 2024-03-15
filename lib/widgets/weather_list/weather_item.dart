import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/assets_utils.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem(this.weather, {super.key, required this.textStyle});
  final Weather weather;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 190,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AssetsUtils.bgCloudsImage,
            ),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${weather.temperature}°',
                  style: theme.textTheme.displayLarge?.copyWith(
                    fontSize: 58,
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
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'H:${weather.temperatureMax}° L:${weather.temperatureMin}°',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  weather.location,
                  style: theme.textTheme.bodyLarge,
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
            ),
          ],
        ),
      ),
    );
  }
}
