import 'package:flutter/material.dart';
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
          future: geocodingService.getCityData('Negresti'),
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
              final locationData1 = snapshot.data as LocationResult;
              final latitude1 = locationData1.latitude;
              final longitude1 = locationData1.longitude;

              return FutureBuilder(
                future: geocodingService.getCityData('Berlin'),
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
                    final locationData2 = snapshot.data as LocationResult;
                    final latitude2 = locationData2.latitude;
                    final longitude2 = locationData2.longitude;
                    final List<Widget> listWeather = [
                      FutureBuilder(
                        future: _weatherService.fetchWeatherData(
                            latitude1, longitude1),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text('Error: ${snapshot.error}'),
                            );
                          } else {
                            return Text(
                                'Weather data for Negresti: ${snapshot.data}');
                          }
                        },
                      ),
                      FutureBuilder(
                        future: _weatherService.fetchWeatherData(
                            latitude2, longitude2),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (snapshot.hasError) {
                            return Center(
                              child: Text('Error: ${snapshot.error}'),
                            );
                          } else {
                            return Text(
                                'Weather data for Berlin: ${snapshot.data}');
                          }
                        },
                      ),
                    ];
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: listWeather,
                      ),
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
