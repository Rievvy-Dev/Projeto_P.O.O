import 'package:flutter/material.dart';
import 'package:poo_project/core/constants/app_size.dart';

AppBar appBarSign() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarOpacity: 1.0,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    leading: const Icon(
      Icons.close,
      size: AppSize.kVeryLargeSize,
    ),
  );
}
