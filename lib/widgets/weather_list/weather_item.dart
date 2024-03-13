import 'package:flutter/material.dart';

import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/assets_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem(this.weather, {super.key});
  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Image.asset(
              AssetsUtils.bgCloudsImage,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 16.0),
                    child: Text(
                      '${weather.temperature}°',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      'H:${weather.temperatureMax}° L:${weather.temperatureMin}°',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'SFPRODISPLAY',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      weather.location,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: SizedBox(
                      height: 80,
                      child: Image.asset(
                        weather.weatherType.iconPath,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      weather.weatherType.weatherName,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
