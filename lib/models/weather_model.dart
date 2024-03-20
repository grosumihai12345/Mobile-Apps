import 'package:weather_app/services/dto/weather_model_dto.dart';
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

  factory Weather.fromDto(WeatherModelDTO dto) {
    WeatherType weatherType;
    int weatherCode = dto.hourly.weatherCode[0];
    switch (weatherCode) {
      case 0:
        weatherType = WeatherType.windyMoon;
        break;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        weatherType = WeatherType.windyRainySun;
        break;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
        weatherType = WeatherType.rainyMoon;
        break;
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
        weatherType = WeatherType.windyMoon;
        break;
      case 95:
      case 96:
      case 99:
        weatherType = WeatherType.windyRainySun;
        break;
      default:
        weatherType = WeatherType.windyRainySun;
    }
    return Weather(
      location: 'Iasi',
      temperature: dto.hourly.temperature2m[0].toInt(),
      temperatureMax: dto.daily.temperature2mMax[0].toInt(),
      temperatureMin: dto.daily.temperature2mMin[0].toInt(),
      weatherType: weatherType,
    );
  }
}
