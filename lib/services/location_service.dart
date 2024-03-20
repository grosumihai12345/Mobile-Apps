import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/services/dto/location_model_dto.dart';

class GeocodingService {
  final String baseUrl;
  final String version;

  GeocodingService(this.baseUrl, this.version);

  Future<LocationResult> getCityData(String name) async {
    final url = '$baseUrl/$version/search?name=$name&count=1';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final decodedResponse = json.decode(response.body);
      final results = decodedResponse['results'] as List;

      if (results.isNotEmpty) {
        final locationData = LocationResult.fromJson(results[0]);
        return locationData;
      } else {
        throw Exception('No city found for the provided name.');
      }
    } else {
      throw Exception('Failed to fetch city data.');
    }
  }
}
