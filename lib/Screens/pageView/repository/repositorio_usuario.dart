import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';

abstract class InterfaceRepositorioUsuario{

  Future<List<ModeloUsuario>> findAllUsuarios();

}