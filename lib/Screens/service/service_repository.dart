import 'dart:convert';

import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/core/constants/str_constant.dart';
import 'package:http/http.dart' as http;

class ServiceRepository {
  Future<List<ModeloPrestadorServicos>> getPrestadores(cidade) async {
    var response = await http.get(Uri.parse(
        '$kBaseUrl/prestadores-servicos/ver-todos-prestadores-servicos-na-cidade-cidade-exemplo'));
    print(response.statusCode);
    print(cidade);
    List listServices = json.decode(response.body);
    return listServices
        .map((json) => ModeloPrestadorServicos.fromJson(json))
        .toList();
  }
}
