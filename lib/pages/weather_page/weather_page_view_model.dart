import 'package:weather_app/models/location_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/dto/location_model_dto.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherPageViewModel {
  final WeatherService _weatherService =
      WeatherService('https://api.open-meteo.com', 'v1');
  final GeocodingService _geocodingService =
      GeocodingService('https://geocoding-api.open-meteo.com', 'v1');

  Future<List<Weather>> getWeatherData() async {
    final List<LocationResult> locationsDto = await _fetchLocations();
    final List<Location> locations = locationsDto
        .map(
          (locationDto) => Location.fromDto(locationDto),
        )
        .toList();
    return _weatherService.fetchWeatherData(locations);
  }

  Future<List<LocationResult>> _fetchLocations() async {
    return Future.wait([
      _geocodingService.getCityData('Bengaluru'),
      _geocodingService.getCityData('Sydney'),
      _geocodingService.getCityData('Tokyo'),
      _geocodingService.getCityData('Boende'),
      _geocodingService.getCityData('Iasi'),
    ]);
  }
}
