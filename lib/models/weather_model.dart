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
    required this.locationName,
    this.temperature,
    required this.temperatureMin,
    required this.temperatureMax,
    required this.weatherType,
  });
  final String locationName;
  final int? temperature;
  final int temperatureMin;
  final int temperatureMax;
  final WeatherType weatherType;
  factory Weather.fromDtoWithName(WeatherData dto, String name) {
    WeatherType weatherType;
    int? weatherCode = dto.current?.weatherCode;
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
      locationName: name,
      temperature: dto.current?.temperature2m.toInt(),
      temperatureMax: dto.daily!.temperature2mMax[0].toInt(),
      temperatureMin: dto.daily!.temperature2mMin[0].toInt(),
      weatherType: weatherType,
    );
  }
}
