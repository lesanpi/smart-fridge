import 'package:flutter/material.dart';
import 'package:wifi_led_esp8266/utils.dart';

class Thermostat extends StatelessWidget {
  const Thermostat({Key? key, required this.temperature}) : super(key: key);
  final int temperature;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final containerSize = size.width * 2 / 3;

    return Container(
      width: containerSize,
      height: containerSize,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            lightColor,
            lightColor,
            lightPurple,
            salmon,
            pink,
            lightYellow,
            lightYellow,
            lightPurple,
          ])),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Stack(
              children: [
                Text(
                  temperature == 404 ? "--  " : "$temperature  ",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Positioned(
                  right: 0,
                  child: Text(
                    "°C",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
