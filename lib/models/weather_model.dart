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
    switch (this) {
      case WeatherType.wind:
        return AppLocalizations.of(context)!.tornadoLabel;
      case WeatherType.zap:
        return AppLocalizations.of(context)!.electricalStormLabel;
      case WeatherType.windyRainySun:
        return AppLocalizations.of(context)!.cloudyLabel;
      case WeatherType.cloudyWindyMoon:
        return AppLocalizations.of(context)!.fastWindLabel;
      case WeatherType.rainyMoon:
        return AppLocalizations.of(context)!.midRainLabel;
      case WeatherType.rainySun:
        return AppLocalizations.of(context)!.rainyLabel;
      case WeatherType.windyMoon:
        return AppLocalizations.of(context)!.clearNightLabel;
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
