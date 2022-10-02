import 'package:flutter/material.dart';
import 'package:poo_project/core/constants/app_size.dart';

TextFormField formFieldSign(controller) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.phone,
    style: const TextStyle(fontSize: AppSize.kHugeSize),
    decoration: const InputDecoration(
      label: Text(
        'DDD + Número',
        style: TextStyle(
          color: Colors.black26,
          fontSize: AppSize.kLargeSize,
          height: 0.5,
        ),
      ),
    ),
  );
}
