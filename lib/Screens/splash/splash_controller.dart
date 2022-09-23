import 'package:flutter/material.dart';
import 'package:poo_project/Screens/hint/hint_screen.dart';

import '../screens_index.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void initApplication() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HintScreen(),
        ),
      ),
    );
  }
}
