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
      default:
        throw Exception('Unknown WeatherType: $this');
    }
  }
}

class Weather {}
