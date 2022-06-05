import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TemperatureGauge extends StatelessWidget {
  final double temperature;
  final double radius;
  final bool isFahrenheit;
  final double percent;

  const TemperatureGauge({
    Key? key,
    this.temperature = 27,
    this.radius = 125,
    this.isFahrenheit = false,
    this.percent = 0.8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = radius * 2;
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Color(0x4E000000),
            offset: Offset(0, 4),
            spreadRadius: .9,
          )
        ],
        shape: BoxShape.circle,
      ),
      child: CircularPercentIndicator(
        percent: percent - .223,
        radius: radius,
        lineWidth: 18,
        animation: true,
        backgroundColor: const Color(0x00F1F4F8),
        startAngle: 220,
        rotateLinearGradient: true,
        circularStrokeCap: CircularStrokeCap.round,
        linearGradient: const LinearGradient(
          colors: [Color(0xff6299ff), Color(0xffff6d62)],
        ),
        center: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-.1, 0),
              child: Text(
                temperature.toString(),
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Comfortaa',
                  color: Color.fromARGB(223, 57, 58, 58),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(.33, -.1),
              child: Text(
                '°C',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Comfortaa',
                  color: Color.fromARGB(223, 57, 58, 58),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
