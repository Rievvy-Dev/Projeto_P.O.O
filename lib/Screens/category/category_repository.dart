import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';
import '../../core/constants/str_constant.dart';

class CategoryRepository {
  Future<List<ModeloCategoria>> getServices() async {
    var response =
        await http.get(Uri.parse('$kBaseUrl/servicos_has_categoria'));
    print(response.statusCode);
    List listServices = json.decode(response.body);
    return listServices.map((json) => ModeloCategoria.fromJson(json)).toList();
  }
}
