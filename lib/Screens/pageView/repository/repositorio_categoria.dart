import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';

abstract class InterfaceRepositorioCategoria {
  Future<List<ModeloCategoria>> findAllCategorias();
}
