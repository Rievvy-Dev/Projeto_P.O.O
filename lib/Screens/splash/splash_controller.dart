import 'package:flutter/material.dart';
import 'package:poo_project/Screens/home/home_screen.dart';
import 'package:poo_project/Screens/localization/localization_screen.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void initApplication() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LocalizationScreen(),
        ),
      ),
    );
  }
}
