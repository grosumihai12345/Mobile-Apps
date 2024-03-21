import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/location_model.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/dto/weather_model_dto.dart';

class WeatherService {
  final String baseUrl;
  final String version;

  WeatherService(this.baseUrl, this.version);

  Future<List<Weather>> fetchWeatherData(List<Location> locations) async {
    String latitudeParams =
        locations.map((location) => location.latitude).toList().join(',');
    String longitudeParams =
        locations.map((location) => location.longitude).toList().join(',');

    final url =
        '$baseUrl/$version/forecast?latitude=$latitudeParams&longitude=$longitudeParams&current=temperature_2m,is_day,precipitation,rain,weather_code,wind_speed_10m,wind_direction_10m&hourly=temperature_2m,precipitation_probability,precipitation,weather_code,wind_speed_10m&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset,uv_index_max&timezone=auto,Europe%2FBerlin';

    final response = await http.get(Uri.parse(url));
    final dynamic rsp = json.decode(response.body);
    print(rsp);
    if (response.statusCode == 200) {
      List<WeatherData> weatherDataList = List<WeatherData>.from(
          (rsp as List).map((model) => WeatherData.fromJson(model)));
      List<Weather> weatherList = [];
      for (final (index, weatherDataDto) in weatherDataList.indexed) {
        final weather = Weather.fromDtoWithName(
            weatherDataDto, locations[index].name ?? '');
        weatherList.add(weather);
      }

      return weatherList;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
