import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/widgets/weather_list/weather_list.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({super.key});
  final TextEditingController _textController =
      TextEditingController(text: 'Search for a city or airport');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 38, 33, 67),
              Color.fromARGB(255, 25, 23, 47)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 48.0,
                bottom: 8.0,
                left: 32.0,
              ),
              child: Text(
                'Weather',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'SFPRODISPLAY',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                controller: _textController,
                style: const TextStyle(color: Colors.grey),
                backgroundColor: Color.fromARGB(255, 21, 6, 41),
              ),
            ),
            Expanded(child: WeatherList()),
          ],
        ),
      ),
    );
  }
}
