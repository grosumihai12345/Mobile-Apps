import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background-image.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bengaluru',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'SFPRODISPLAY',
                      fontWeight: FontWeight.w400),
                ),
                const Text(
                  '19°',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 96,
                      fontFamily: 'SFPRODISPLAY',
                      fontWeight: FontWeight.w100),
                ),
                const Text(
                  'Mostly Clear',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: 'SFPRODISPLAY',
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  'H:24° L:18°',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'SFPRODISPLAY',
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image.asset(
                    "assets/images/house-image.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
