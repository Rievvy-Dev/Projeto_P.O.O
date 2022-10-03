import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/profissional/profissional_screen.dart';
import 'package:poo_project/core/constants/str_constant.dart';
import 'package:http/http.dart' as http;

class ProfissionalController {
  Future<ModeloPrestadorServicos> getPrestador() async {
    var response =
        await http.get(Uri.parse('$kBaseUrl/servicos/ver-todos-servicos'));
    print(response.statusCode);
    ModeloPrestadorServicos prestadorServicos = json.decode(response.body);
    return prestadorServicos;
  }

  navigatorPrestador(context) {
    if (getPrestador() != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => const ProfissionalScreen())));
    } else {
      const CircularProgressIndicator();
    }
  }
}
