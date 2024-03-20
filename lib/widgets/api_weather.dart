import 'package:flutter/material.dart';
import 'package:weather_app/services/dto/weather_model_dto.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/services/dto/location_model_dto.dart';

class MyAp extends StatelessWidget {
  final WeatherService _weatherService =
      WeatherService('https://api.open-meteo.com', 'v1');
  final geocodingService =
      GeocodingService('https://geocoding-api.open-meteo.com', 'v1');

  MyAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: FutureBuilder(
          future: geocodingService.getCityData('Istanbul'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              final locationData = snapshot.data as LocationResult;
              final latitude = locationData.latitude;
              final longitude = locationData.longitude;

              return FutureBuilder(
                future: _weatherService.fetchWeatherData(latitude, longitude),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    final result = WeatherModelDTO.fromJson(snapshot.data!);
                    print(result);
                    return Center(
                      child: Text('Weather data: ${snapshot.data}'),
                    );
                  }
                },
              );
            }
          },
        ),
      ),
    );
  }
}
