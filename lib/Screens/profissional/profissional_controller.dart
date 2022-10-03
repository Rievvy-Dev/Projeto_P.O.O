import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/profissional/profissional_screen.dart';
import 'package:poo_project/core/constants/str_constant.dart';
import 'package:http/http.dart' as http;

class ProfissionalController {
  Future<ModeloPrestadorServicos> getPrestador(id) async {
    var response = await http.get(
        Uri.parse('$kBaseUrl/prestadores-servicos/prestador-servicos/$id'));
    print(response.statusCode);
    print('id: $id');
    ModeloPrestadorServicos prestadorServicos = ModeloPrestadorServicos.fromJson(json.decode(response.body)) ;
    return prestadorServicos;
  }

  navigatorPrestador(context, id) {
    Future<ModeloPrestadorServicos> prestador = getPrestador(id);
    print(id);
    print(prestador);
    if (prestador != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => ProfissionalScreen(id))));
    } else {
      const CircularProgressIndicator();
    }
  }
}
