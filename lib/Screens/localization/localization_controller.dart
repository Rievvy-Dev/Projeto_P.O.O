import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:poo_project/Screens/home/home_screen.dart';

import '../screens_index.dart';

class LocalizationController {
  static Future<String> takePosition(context) async {
    Position position = await Geolocator.getCurrentPosition();
    String city;
    List<Placemark> locals =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    if (locals != null) {
      city = locals[0].subAdministrativeArea.toString();
      print(city);
      navigatorHome(context, city);
      return city;
    } else {
      return 'Erro ao acessar localização';
    }
  }

  static void navigatorHome(context, city) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => HomeScreen(city))));
  }
}
