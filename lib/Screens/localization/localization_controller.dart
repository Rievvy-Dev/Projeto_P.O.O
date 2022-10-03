import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:poo_project/Screens/pageView/page_view_controller.dart';

class LocalizationController {

  static Future<String> takePosition(context) async {
    Position position = await Geolocator.getCurrentPosition();
    String city;
    List<Placemark> locals =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    if (locals != null) {
      city = locals[0].subAdministrativeArea.toString();

      navigatorHome(context, city);
      return city;
    } else {
      return 'Erro ao acessar localização';
    }
  }

  static void navigatorHome(context, city) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: ((context) => PageViewController(city))));
  }


}
