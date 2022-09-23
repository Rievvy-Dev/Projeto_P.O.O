import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:poo_project/Screens/hint/hint_screen.dart';
import 'package:poo_project/Screens/screens_index.dart';
import 'package:poo_project/Screens/splash/splash_controller.dart';
import 'package:poo_project/core/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final _controller = SplashScreenController(context);

  @override
  void initState() {
    super.initState();
    _controller.initApplication();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'Jáchei',
            style: TextStyle(),
          ),
        ],
      )),
    );
  }
}
