// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModelDTO _$WeatherModelDTOFromJson(Map<String, dynamic> json) =>
    WeatherModelDTO(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      daily: Daily.fromJson(json['daily'] as Map<String, dynamic>),
      dailyUnits:
          DailyUnits.fromJson(json['daily_units'] as Map<String, dynamic>),
      elevation: (json['elevation'] as num).toDouble(),
      generationtimeMs: (json['generationtime_ms'] as num).toDouble(),
      hourly: Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
      hourlyUnits:
          HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      utcOffsetSeconds: json['utc_offset_seconds'] as int,
    );

Map<String, dynamic> _$WeatherModelDTOToJson(WeatherModelDTO instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
    };

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
      time: json['time'] as String,
      temperature2m: json['temperature_2m'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      weatherCode: json['weather_code'] as String,
      windDirection10m: json['wind_direction_10m'] as String,
      windSpeed10m: json['wind_speed_10m'] as String,
      precipitation: json['precipitation'] as String,
      cloudCover: json['cloud_cover'] as String,
    );

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationProbability,
      'weather_code': instance.weatherCode,
      'wind_direction_10m': instance.windDirection10m,
      'wind_speed_10m': instance.windSpeed10m,
      'precipitation': instance.precipitation,
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
      weatherCode:
          (json['weather_code'] as List<dynamic>).map((e) => e as int).toList(),
      windDirection10m: (json['wind_direction_10m'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      windSpeed10m: (json['wind_speed_10m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitation: (json['precipitation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      cloudCover:
          (json['cloud_cover'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'precipitation_probability': instance.precipitationProbability,
      'weather_code': instance.weatherCode,
      'wind_direction_10m': instance.windDirection10m,
      'wind_speed_10m': instance.windSpeed10m,
      'precipitation': instance.precipitation,
      'cloud_cover': instance.cloudCover,
    };

DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => DailyUnits(
      time: json['time'] as String,
      temperature2mMax: json['temperature_2m_max'] as String,
      temperature2mMin: json['temperature_2m_min'] as String,
      uvIndexMax: json['uv_index_max'] as String,
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
    );

Map<String, dynamic> _$DailyUnitsToJson(DailyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'uv_index_max': instance.uvIndexMax,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2mMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature2mMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      uvIndexMax: (json['uv_index_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      sunrise:
          (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      sunset:
          (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'uv_index_max': instance.uvIndexMax,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
