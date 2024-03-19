import 'package:flutter/material.dart';
import 'package:weather_app/services/dto/weather_model_dto.dart';
import 'package:weather_app/services/weather_service.dart';

class MyAp extends StatelessWidget {
  final WeatherService _weatherService =
      WeatherService('https://api.open-meteo.com', 'v1');

  MyAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
        ),
        body: FutureBuilder(
          future: _weatherService.fetchWeatherData(52.52, 13.41),
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
        ),
      ),
    );
  }
}
