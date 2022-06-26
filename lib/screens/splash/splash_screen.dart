import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tracker/screens/onboarding_screens/onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const OnboardingScreens())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          Text(
            'Tracker',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: const Color(0xff3580FF),
                ),
          )
        ],
      ),
    );
  }
}
