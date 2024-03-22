import 'package:json_annotation/json_annotation.dart';
part 'weather_model_dto.g.dart';

@JsonSerializable()
class WeatherData {
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
  @JsonKey(name: "current_units")
  final CurrentUnits? currentUnits;
  final Current? current;
  @JsonKey(name: "hourly_units")
  final HourlyUnits hourlyUnits;
  final Hourly? hourly;
  @JsonKey(name: "daily_units")
  final DailyUnits? dailyUnits;
  final Daily? daily;
  WeatherData({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    this.currentUnits,
    this.current,
    required this.hourlyUnits,
    this.hourly,
    this.dailyUnits,
    this.daily,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherDataToJson(this);
}

@JsonSerializable()
class CurrentUnits {
  final String time;
  final String interval;
  @JsonKey(name: "temperature_2m")
  final String temperature2m;
  @JsonKey(name: "is_day")
  final String isDay;
  final String precipitation;
  final String rain;
  @JsonKey(name: "weather_code")
  final String weatherCode;
  @JsonKey(name: "wind_speed_10m")
  final String windSpeed10m;
  @JsonKey(name: "wind_direction_10m")
  final String windDirection10m;

  CurrentUnits({
    required this.time,
    required this.interval,
    required this.temperature2m,
    required this.isDay,
    required this.precipitation,
    required this.rain,
    required this.weatherCode,
    required this.windSpeed10m,
    required this.windDirection10m,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentUnitsToJson(this);
}

@JsonSerializable()
class Current {
  final String time;
  final int interval;
  @JsonKey(name: "temperature_2m")
  final double temperature2m;
  @JsonKey(name: "is_day")
  final int isDay;
  final double precipitation;
  final double rain;
  @JsonKey(name: "weather_code")
  final int weatherCode;
  @JsonKey(name: "wind_speed_10m")
  final double windSpeed10m;
  @JsonKey(name: "wind_direction_10m")
  final int windDirection10m;

  Current({
    required this.time,
    required this.interval,
    required this.temperature2m,
    required this.isDay,
    required this.precipitation,
    required this.rain,
    required this.weatherCode,
    required this.windSpeed10m,
    required this.windDirection10m,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class HourlyUnits {
  final String time;
  @JsonKey(name: "temperature_2m")
  final String temperature2m;
  @JsonKey(name: "precipitation_probability")
  final String precipitationProbability;
  final String precipitation;
  @JsonKey(name: "weather_code")
  final String weatherCode;
  @JsonKey(name: "wind_speed_10m")
  final String windSpeed10m;
  @JsonKey(name: "wind_direction_10m")
  final String? windDirection10m;
  @JsonKey(name: "cloud_cover")
  final String? cloudCover;

  HourlyUnits({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.precipitation,
    required this.weatherCode,
    required this.windSpeed10m,
    this.windDirection10m,
    this.cloudCover,
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
  final List<double> precipitation;
  @JsonKey(name: "weather_code")
  final List<int> weatherCode;
  @JsonKey(name: "wind_speed_10m")
  final List<double> windSpeed10m;
  @JsonKey(name: "wind_direction_10m")
  final List<int>? windDirection10m;
  @JsonKey(name: "cloud_cover")
  final List<int>? cloudCover;
  Hourly({
    required this.time,
    required this.temperature2m,
    required this.precipitationProbability,
    required this.precipitation,
    required this.weatherCode,
    required this.windSpeed10m,
    this.windDirection10m,
    this.cloudCover,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

@JsonSerializable()
class DailyUnits {
  final String time;
  @JsonKey(name: "weather_code")
  final String? weatherCode;
  @JsonKey(name: "temperature_2m_max")
  final String temperature2mMax;
  @JsonKey(name: "temperature_2m_min")
  final String temperature2mMin;
  final String sunrise;
  final String sunset;
  @JsonKey(name: "uv_index_max")
  final String uvIndexMax;

  DailyUnits({
    required this.time,
    this.weatherCode,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.sunrise,
    required this.sunset,
    required this.uvIndexMax,
  });

  factory DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);
  Map<String, dynamic> toJson() => _$DailyUnitsToJson(this);
}

@JsonSerializable()
class Daily {
  final List<String> time;
  @JsonKey(name: "weather_code")
  final List<int>? weatherCode;
  @JsonKey(name: "temperature_2m_max")
  final List<double> temperature2mMax;
  @JsonKey(name: "temperature_2m_min")
  final List<double> temperature2mMin;
  final List<String> sunrise;
  final List<String> sunset;
  @JsonKey(name: "uv_index_max")
  final List<double> uvIndexMax;

  Daily({
    required this.time,
    this.weatherCode,
    required this.temperature2mMax,
    required this.temperature2mMin,
    required this.sunrise,
    required this.sunset,
    required this.uvIndexMax,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
}
