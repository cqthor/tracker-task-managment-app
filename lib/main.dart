// ignore_for_file: unused_import

import 'package:tracker/screens/home/home_screens.dart';
import 'package:tracker/screens/login_signup/sign_in.dart';
import 'package:tracker/screens/login_signup/sign_up.dart';
import 'package:tracker/screens/settings/setting_screen.dart';
import 'package:tracker/screens/splash/splash_screen.dart';

import 'package:flutter/material.dart';

import 'screens/onboarding_screens/onboarding_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        primaryColor: const Color(0xff002055),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          headline4: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          headline5: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          headline6: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          headlineLarge: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ).apply(
          bodyColor: const Color(0xff002055),
          displayColor: const Color(0xff002055),
        ),
        appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff002055),
              fontFamily: 'Poppins',
            ),
            iconTheme: IconThemeData(
              color: Color(0xff002055),
              size: 30,
            )),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff3580FF),
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            primary: Colors.white,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: const SettingScreen(),
    );
  }
}
