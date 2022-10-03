import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../service/service_repository.dart';
import '../service/service_screen.dart';

class CategoryController extends GetxController {
  ServiceRepository repository = ServiceRepository();
  navigatorPrestadores(context, cidade) {
    if (repository.getPrestadores(cidade) != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ServiceScreen(cidade)));
    } else {
      return const CircularProgressIndicator();
    }
  }
}