import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreenSecond extends StatelessWidget {
  const OnboardingScreenSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36),
      child: Stack(children: [
        SvgPicture.asset(
          "assets/images/Circle.svg",
        ),
        Positioned(
          top: 80,
          child: Image.asset("assets/images/onboard2.png"),
        ),
        Positioned(
          top: 90,
          left: 20,
          child: Image.asset("assets/images/onboard2_1.png"),
        ),
        Positioned(
          top: 170,
          right: 10,
          child: Image.asset("assets/images/onboard2_2.png"),
        ),
      ]),
    );
  }
}
