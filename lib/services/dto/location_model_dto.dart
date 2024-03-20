import 'package:json_annotation/json_annotation.dart';

part 'location_model_dto.g.dart';

@JsonSerializable()
class LocationResult {
  final int id;
  final String? name;
  final double latitude;
  final double longitude;
  final double elevation;
  @JsonKey(name: "feature_code")
  final String featureCode;
  @JsonKey(name: "country_code")
  final String countryCode;
  @JsonKey(name: "admin1_id")
  final int? admin1Id;
  @JsonKey(name: "admin2_id")
  final int? admin2Id;
  @JsonKey(name: "admin3_id")
  final int? admin3Id;
  @JsonKey(name: "admin4_id")
  final int? admin4Id;
  final String timezone;
  final int? population;
  final List<String>? postcodes;
  @JsonKey(name: "country_id")
  final int countryId;
  final String? country;
  final String? admin1;
  final String? admin2;
  final String? admin3;
  final String? admin4;

  LocationResult({
    required this.id,
    this.name,
    required this.latitude,
    required this.longitude,
    required this.elevation,
    required this.featureCode,
    required this.countryCode,
    this.admin1Id,
    this.admin2Id,
    this.admin3Id,
    this.admin4Id,
    required this.timezone,
    this.population,
    this.postcodes,
    required this.countryId,
    this.country,
    this.admin1,
    this.admin2,
    this.admin3,
    this.admin4,
  });
  factory LocationResult.fromJson(Map<String, dynamic> json) =>
      _$LocationResultFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResultToJson(this);
}

@JsonSerializable()
class LocationResponse {
  final List<LocationResult> results;
  @JsonKey(name: "generationtime_ms")
  final double generationtimeMs;

  LocationResponse({
    required this.results,
    required this.generationtimeMs,
  });
  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}
