import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets_utils.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({super.key});
  final TextEditingController _textController =
      TextEditingController(text: 'Search for a city or airport');
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 23, 0, 57),
          Color.fromARGB(255, 41, 0, 74)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
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
                    fontSize: 30,
                    fontFamily: 'SFPRODISPLAY',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                controller: _textController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Image.asset(
                AssetsUtils.bgCloudsImage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
