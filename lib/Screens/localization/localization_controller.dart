import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocalizationController {
  static void takePosition() async {
    Position position = await Geolocator.getCurrentPosition();

    print(position);
  }
}
