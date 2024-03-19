import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String baseUrl;
  final String version;

  WeatherService(this.baseUrl, this.version);

  Future<Map<String, dynamic>> fetchWeatherData(
      double latitude, double longitude) async {
    final url =
        '$baseUrl/$version/forecast?latitude=$latitude&longitude=$longitude&timezone=auto&hourly=temperature_2m,precipitation_probability,weather_code,wind_direction_10m,wind_speed_10m,precipitation,cloud_cover&daily=temperature_2m_max,temperature_2m_min,uv_index_max,sunrise,sunset';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
