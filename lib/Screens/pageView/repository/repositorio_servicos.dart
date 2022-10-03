import 'package:poo_project/Screens/pageView/model/modelo_servicos.dart';

abstract class InterfaceRepositorioServicos{
  Future<List<ModeloServicos>> findAllServicos();
}