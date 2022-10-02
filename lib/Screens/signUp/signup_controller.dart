import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_size.dart';

class SignUpController with ChangeNotifier {
  static Map<String, HighlightedWord> changeWordSign() {
    return {
      'Jáchei!': HighlightedWord(
        textStyle: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: AppSize.kLargeSize),
      ),
    };
  }

  static void signUp(phone, name, password) async {
    final dio = Dio();
    var response = await dio.post(
      '',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
      ),
      data: {
        "number": phone,
        "name": name,
        "password": password,
      },
    );
    print(response.statusCode);
  }
}
