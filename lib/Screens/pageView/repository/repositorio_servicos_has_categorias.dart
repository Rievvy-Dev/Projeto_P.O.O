import 'package:poo_project/Screens/pageView/model/modelo_servicos_has_categorias.dart';

abstract class InterfaceRepositorioServicosHasCategorias {
  Future<List<ModeloServicosHasCategorias>> findAllServicosHasCategorias();
}