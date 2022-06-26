import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreenThird extends StatelessWidget {
  const OnboardingScreenThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Stack(children: [
        SvgPicture.asset(
          "assets/images/Circle.svg",
        ),
        Positioned(
          top: 116,
          left: 45,
          child: Image.asset("assets/images/onboard3_1.png"),
        ),
        Positioned(
          top: 82,
          left: 20,
          child: Image.asset("assets/images/onboard3_2.png"),
        ),
        Positioned(
          top: 240,
          right: 12,
          child: Image.asset("assets/images/onboard3_3.png"),
        ),
      ]),
    );
  }
}
