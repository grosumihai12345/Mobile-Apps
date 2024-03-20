// import 'package:flutter/material.dart';
// import 'package:weather_app/services/dto/location_model_dto.dart';
// import 'package:weather_app/services/location_service.dart';

// class MyAp extends StatelessWidget {
//   final geocodingService =
//       GeocodingService('https://geocoding-api.open-meteo.com', 'v1');

//   MyAp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Weather App'),
//         ),
//         body: FutureBuilder(
//           future: geocodingService.getCityData('Berlin'),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text('Error: ${snapshot.error}'),
//               );
//             } else {
//               final locationData = snapshot.data as LocationResult;
//               return Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('City name: ${locationData.name}'),
//                     Text('Latitude: ${locationData.latitude}'),
//                     Text('Longitude: ${locationData.longitude}'),
//                   ],
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
