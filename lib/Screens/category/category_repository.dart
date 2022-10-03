import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poo_project/Screens/pageView/model/modelo_servicos_has_categorias.dart';
import '../../core/constants/str_constant.dart';

class CategoryRepository {
  Future<List<ModeloServicosHasCategorias>> getServices() async {
    var response =
    await http.get(Uri.parse('$kBaseUrl/servicos/ver-todos-servicos'));
    print(response.statusCode);
    List listServices = json.decode(response.body);
    return listServices.map((json) => ModeloServicosHasCategorias.fromJson(json)).toList();
  }
}
