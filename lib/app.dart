import 'package:flutter/material.dart';
import 'package:poo_project/Screens/hint/hint_screen.dart';
import 'package:poo_project/Screens/home/home_screen.dart';
import 'package:poo_project/Screens/localization/localization_screen.dart';
import 'package:poo_project/Screens/splash/splash_screen.dart';

import 'Screens/screens_index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
        routes: {
          Screens.splash: (BuildContext context) => const SplashScreen(),
          Screens.hint: (BuildContext context) => const HintScreen(),
          Screens.localization: (BuildContext context) =>
              const LocalizationScreen(),
          Screens.home: (BuildContext context) => const HomeScreen(),
        });
  }
}
