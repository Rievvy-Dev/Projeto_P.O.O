import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';

abstract class RepositorioUsuario{

  Future<List<ModeloUsuario>> findAllUsers();

}