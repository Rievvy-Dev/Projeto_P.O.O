import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../screens_index.dart';

class LocalizationController {
  static Future<bool> takePosition(context) async {
    Position position = await Geolocator.getCurrentPosition();

    List<Placemark> locals =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    if (locals != null) {
      print(locals);
      navigatorHome(context);
      return true;
    } else {
      return false;
    }
  }

  static void navigatorHome(context) {
    Navigator.popAndPushNamed(context, Screens.home);
  }
}
