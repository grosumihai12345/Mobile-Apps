import 'package:weather_app/services/dto/location_model_dto.dart';

class Location {
  final int id;
  final String? name;
  final double latitude;
  final double longitude;
  final int countryId;
  final String? country;

  Location(
      {this.country,
      required this.countryId,
      required this.id,
      required this.latitude,
      required this.longitude,
      this.name});

  factory Location.fromDto(LocationResult dto) {
    return Location(
      country: dto.country,
      countryId: dto.countryId,
      id: dto.id,
      latitude: dto.latitude,
      longitude: dto.longitude,
      name: dto.name,
    );
  }
}
