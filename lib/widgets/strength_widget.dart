import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class StrengthWidget extends StatelessWidget {
  const StrengthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
          size: 70,
          customWidths: CustomSliderWidths(
            trackWidth: 5,
            progressBarWidth: 5,
            handlerSize: 0,
          ),
          infoProperties: InfoProperties(
              mainLabelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)
          ),
          customColors: CustomSliderColors(
            dotColor: Colors.white,
            trackGradientStartAngle: 0,
            trackGradientEndAngle: 360,
            trackColors: const [
              Color(0xff7436c4),
              Color(0xff3e83e7),
            ],
            gradientStartAngle: 0,
            gradientEndAngle: 360,
            progressBarColors: const [
              Color(0xff7436c4),
              Color(0xff3e83e7),
            ],
          ),
          startAngle: 0,
          angleRange: 360
      ),
      min: 0,
      max: 100,
      initialValue: 23,
      onChange: (double value) {
        // print(value);
      },
    );
  }
}