import 'package:json_annotation/json_annotation.dart';

part 'weather_model_dto.g.dart';

@JsonSerializable()
class WeatherModelDTO {
  final double latitude;
  final double longitude;
  @JsonKey(name: "generationtime_ms")
  final double generationtimeMs;
  @JsonKey(name: "utc_offset_seconds")
  final int utcOffsetSeconds;
  final String timezone;
  @JsonKey(name: "timezone_abbreviation")
  final String timezoneAbbreviation;
  final double elevation;
  @JsonKey(name: "hourly_units")
  final HourlyUnits hourlyUnits;
  final Hourly hourly;
  @JsonKey(name: "daily_units")
  final DailyUnits dailyUnits;
  final Daily daily;

  WeatherModelDTO({
    required this.latitude,
    required this.longitude,
    required this.daily,
    required this.dailyUnits,
    required this.elevation,
    required this.generationtimeMs,
    required this.hourly,
    required this.hourlyUnits,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.utcOffsetSeconds,
  });

  factory WeatherModelDTO.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelDTOToJson(this);
}

@JsonSerializable()
class HourlyUnits {
  final String time;
  @JsonKey(name: "temperature_2m")
  final String temperature2m;
  @JsonKey(name: "precipitation_probability")
  final String precipitationProbability;
  @JsonKey(name: "weather_code")
  final String weatherCode;
  @JsonKey(name: "wind_direction_10m")
  final String windDirection10m;
  @JsonKey(name: "wind_speed_10m")
  final String windSpeed10m;
  final String precipitation;
  @JsonKey(name: "cloud_cover")
  final String cloudCover;
  HourlyUnits({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.weatherCode,
    required this.windDirection10m,
    required this.windSpeed10m,
    required this.precipitation,
    required this.cloudCover,
  });
  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyUnitsToJson(this);
}

@JsonSerializable()
class Hourly {
  final List<String> time;
  @JsonKey(name: "temperature_2m")
  final List<double> temperature2m;
  @JsonKey(name: "precipitation_probability")
  final List<int> precipitationProbability;
  @JsonKey(name: "weather_code")
  final List<int> weatherCode;
  @JsonKey(name: "wind_direction_10m")
  final List<int> windDirection10m;
  @JsonKey(name: "wind_speed_10m")
  final List<double> windSpeed10m;
  final List<double> precipitation;
  @JsonKey(name: "cloud_cover")
  final List<int> cloudCover;

  Hourly({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.weatherCode,
    required this.windDirection10m,
    required this.windSpeed10m,
    required this.precipitation,
    required this.cloudCover,
  });
  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

@JsonSerializable()
class DailyUnits {
  final String time;
  @JsonKey(name: "temperature_2m_max")
  final String temperature2mMax;
  @JsonKey(name: "temperature_2m_min")
  final String temperature2mMin;
  @JsonKey(name: "uv_index_max")
  final String uvIndexMax;
  final String sunrise;
  final String sunset;

  DailyUnits({
    required this.time,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.uvIndexMax,
    required this.sunrise,
    required this.sunset,
  });
  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$DailyUnitsToJson(this);
}

@JsonSerializable()
class Daily {
  final List<String> time;
  @JsonKey(name: "temperature_2m_max")
  final List<double> temperature2mMax;
  @JsonKey(name: "temperature_2m_min")
  final List<double> temperature2mMin;
  @JsonKey(name: "uv_index_max")
  final List<double> uvIndexMax;
  final List<String> sunrise;
  final List<String> sunset;

  Daily({
    required this.time,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.uvIndexMax,
    required this.sunrise,
    required this.sunset,
  });
  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}
