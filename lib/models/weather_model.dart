import 'package:weather_app/utils/assets_utils.dart';

enum WeatherType {
  cloudyWindyMoon,
  rainyMoon,
  wind,
  windyMoon,
  windyRainySun,
  rainySun,
  zap;

  String get iconPath {
    switch (this) {
      case WeatherType.wind:
        return AssetsUtils.windIconPath;
      case WeatherType.zap:
        return AssetsUtils.zapIconPath;
      case WeatherType.windyRainySun:
        return AssetsUtils.windyRainySunIconPath;
      case WeatherType.cloudyWindyMoon:
        return AssetsUtils.cloudyWindyMoonIconPath;
      case WeatherType.rainyMoon:
        return AssetsUtils.rainyMoonIconPath;
      case WeatherType.rainySun:
        return AssetsUtils.rainySunIconPath;
      case WeatherType.windyMoon:
        return AssetsUtils.windyMoonIconPath;
    }
  }

  String get description {
    switch (this) {
      case WeatherType.wind:
        return 'Tornado';
      case WeatherType.zap:
        return 'Electrical Storm';
      case WeatherType.windyRainySun:
        return 'Cloudy';
      case WeatherType.cloudyWindyMoon:
        return 'Fast wind';
      case WeatherType.rainyMoon:
        return 'Mid Rain';
      case WeatherType.rainySun:
        return 'Rainy';
      case WeatherType.windyMoon:
        return 'Clear night with a breeze';
      default:
        throw Exception('Unknown WeatherType: $this');
    }
  }
}

class Weather {
  Weather({
    required this.location,
    required this.temperature,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.weatherType,
  });
  final String location;
  final int temperature;
  final int temperatureMin;
  final int temperatureMax;
  final WeatherType weatherType;
}
