import 'dart:convert';

import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';
import 'package:poo_project/Screens/pageView/repository/RepositorioUsuario.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constants/str_constant.dart';

class RepositorioHttpUsuario implements RepositorioUsuario{
  @override
  Future<List<ModeloUsuario>> findAllUsers() async{
    final response = await http.get('$kBaseUrl/usuarios/ver-todos-usuarios' as Uri);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<ModeloUsuario>( (resp) => ModeloUsuario.fromMap(resp) ).toList();
  }

}