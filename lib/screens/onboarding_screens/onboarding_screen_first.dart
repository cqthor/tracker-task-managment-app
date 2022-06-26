import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//  List<String> _assetNames=[];
class OnboardingScreenFirst extends StatelessWidget {
  const OnboardingScreenFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 36),
      child: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/Circle.svg",
          ),
          Positioned(
            top: 60,
            right: 60,
            child: Image.asset(
              "assets/images/first.png",
            ),
          ),
          Positioned(
            top: 180,
            left: 25,
            child: Image.asset(
              "assets/images/second.png",
            ),
          ),
          Positioned(
            top: 250,
            right: 18,
            child: Image.asset(
              "assets/images/third.png",
            ),
          ),
        ],
      ),
    );
  }
}
