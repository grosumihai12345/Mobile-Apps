import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/assets_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem(this.weather, {super.key});
  final Weather weather;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final temperatureFontSize = screenHeight * 0.08;
    final maxMinTemperatureFontSize = screenHeight * 0.015;
    final locationFontSize = screenHeight * 0.02;

    return SizedBox(
      height: screenHeight * 0.27,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            left: 16,
            right: 16,
            child: Image.asset(
              AssetsUtils.bgCloudsImage,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 38,
            right: 38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${weather.temperature}°',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: temperatureFontSize,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: Text(
                        'H:${weather.temperatureMax}° L:${weather.temperatureMin}°',
                        style: GoogleFonts.oxygen(
                          color: Colors.grey,
                          fontSize: maxMinTemperatureFontSize,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Text(
                      weather.location,
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: locationFontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.1,
                      child: Image.asset(
                        weather.weatherType.iconPath,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      weather.weatherType.weatherName(context),
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: maxMinTemperatureFontSize,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
