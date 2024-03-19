import 'package:weather_app/utils/assets_utils.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  String description(context) {
    var localizations = AppLocalizations.of(context)!;
    switch (this) {
      case WeatherType.wind:
        return localizations.tornadoLabel;
      case WeatherType.zap:
        return localizations.electricalStormLabel;
      case WeatherType.windyRainySun:
        return localizations.cloudyLabel;
      case WeatherType.cloudyWindyMoon:
        return localizations.fastWindLabel;
      case WeatherType.rainyMoon:
        return localizations.midRainLabel;
      case WeatherType.rainySun:
        return localizations.rainyLabel;
      case WeatherType.windyMoon:
        return localizations.clearNightLabel;
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
