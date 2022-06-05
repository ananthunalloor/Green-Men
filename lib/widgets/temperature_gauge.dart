import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TemperatureGauge extends StatefulWidget {
  const TemperatureGauge({
    Key? key,
    this.temperature = 27,
    this.radius = 100,
    this.isFahrenheit = false,
    this.percent = 0.0,
  }) : super(key: key);

  final int temperature;
  final double radius;
  final bool isFahrenheit;
  final double percent;

  @override
  State<TemperatureGauge> createState() => _TemperatureGaugeWidget();
}

class _TemperatureGaugeWidget extends State<TemperatureGauge> {
  @override
  Widget build(BuildContext context) {
    var size = widget.radius * 2;
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
        animateFromLastPercent: true,
        percent: widget.percent,
        radius: widget.radius,
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
                widget.temperature.toString(),
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Comfortaa',
                  color: Color.fromARGB(223, 57, 58, 58),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(.45, -.2),
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
