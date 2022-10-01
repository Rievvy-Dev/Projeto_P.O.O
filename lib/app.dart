import 'package:flutter/material.dart';
import 'package:poo_project/Screens/hint/hint_screen.dart';
import 'package:poo_project/Screens/localization/localization_screen.dart';
import 'package:poo_project/Screens/pageView/page_view_controller.dart';
import 'package:poo_project/Screens/splash/splash_screen.dart';
import 'package:poo_project/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Screens/screens_index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        localizationsDelegates: const [
          S.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
        routes: {
          Screens.splash: (BuildContext context) => const SplashScreen(),
          Screens.hint: (BuildContext context) => const HintScreen(),
          Screens.localization: (BuildContext context) =>
              const LocalizationScreen(),
        });
  }
}
