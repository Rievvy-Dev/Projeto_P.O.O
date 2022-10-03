import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_size.dart';
import '../../../core/constants/str_constant.dart';
import 'package:http/http.dart' as http;

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

    var response =
    await http.post(Uri.parse('$kBaseUrl/usuarios/salvar-usuario'),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: json.encode(
          {
            "nome": name,
            "linkFoto": phone
          },
        ));
    print(response.statusCode);
  }
}
