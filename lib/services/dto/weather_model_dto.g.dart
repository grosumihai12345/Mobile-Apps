// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) => WeatherData(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int,
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      currentUnits: json['current_units'] == null
          ? null
          : CurrentUnits.fromJson(
              json['current_units'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      hourlyUnits:
          HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? null
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
      dailyUnits: json['daily_units'] == null
          ? null
          : DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? null
          : Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDataToJson(WeatherData instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_units': instance.currentUnits,
      'current': instance.current,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
    };

CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) => CurrentUnits(
      time: json['time'] as String,
      interval: json['interval'] as String,
      temperature2m: json['temperature_2m'] as String,
      isDay: json['is_day'] as String,
      precipitation: json['precipitation'] as String,
      rain: json['rain'] as String,
      weatherCode: json['weather_code'] as String,
      windSpeed10m: json['wind_speed_10m'] as String,
      windDirection10m: json['wind_direction_10m'] as String,
    );

Map<String, dynamic> _$CurrentUnitsToJson(CurrentUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'is_day': instance.isDay,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'wind_direction_10m': instance.windDirection10m,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      time: json['time'] as String,
      interval: json['interval'] as int,
      temperature2m: (json['temperature_2m'] as num).toDouble(),
      isDay: json['is_day'] as int,
      precipitation: (json['precipitation'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
      weatherCode: json['weather_code'] as int,
      windSpeed10m: (json['wind_speed_10m'] as num).toDouble(),
      windDirection10m: json['wind_direction_10m'] as int,
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2m,
      'is_day': instance.isDay,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'wind_direction_10m': instance.windDirection10m,
    };

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
      time: json['time'] as String,
      temperature2m: json['temperature_2m'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      precipitation: json['precipitation'] as String,
      weatherCode: json['weather_code'] as String,
      windSpeed10m: json['wind_speed_10m'] as String,
      windDirection10m: json['wind_direction_10m'] as String?,
      cloudCover: json['cloud_cover'] as String?,
    );

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'wind_direction_10m': instance.windDirection10m,
      'cloud_cover': instance.cloudCover,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => e as int)
              .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode:
          (json['weather_code'] as List<dynamic>).map((e) => e as int).toList(),
      windSpeed10m: (json['wind_speed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      windDirection10m: (json['wind_direction_10m'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      cloudCover: (json['cloud_cover'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationProbability,
      'precipitation': instance.precipitation,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
      'wind_direction_10m': instance.windDirection10m,
      'cloud_cover': instance.cloudCover,
    };

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => DailyUnits(
      time: json['time'] as String,
      weatherCode: json['weather_code'] as String?,
      temperature2mMax: json['temperature_2m_max'] as String,
      temperature2mMin: json['temperature_2m_min'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      uvIndexMax: json['uv_index_max'] as String,
    );

Map<String, dynamic> _$DailyUnitsToJson(DailyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'uv_index_max': instance.uvIndexMax,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCode: (json['weather_code'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      temperature2mMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature2mMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
      uvIndexMax: (json['uv_index_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'time': instance.time,
      'weather_code': instance.weatherCode,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'uv_index_max': instance.uvIndexMax,
    };
