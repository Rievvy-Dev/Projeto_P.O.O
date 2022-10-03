import 'package:flutter/material.dart';
import 'package:poo_project/Screens/localization/localization_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);

  void initHomePage() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PageView(),
        ),
      ),
    );
  }

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

  Future<bool> verifyToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('token') != null) {
      return true;
    } else {
      return false;
    }
  }
}
