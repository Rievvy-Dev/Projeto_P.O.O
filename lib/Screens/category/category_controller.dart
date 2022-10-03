import 'dart:developer';

import 'package:flutter/material.dart';
import '../service/service_repository.dart';
import '../service/service_screen.dart';

class CategoryController {
  ServiceRepository repository = ServiceRepository();
  navigatorPrestadores(context, cidade) {
    if (repository.getPrestadores(cidade) != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ServiceScreen()));
    } else {
      return null;
    }
  }
}
