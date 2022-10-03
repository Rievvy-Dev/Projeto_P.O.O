import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';

abstract class InterfaceRepositorioPrestadorServicos{
  Future<List<ModeloPrestadorServicos>> findAllPrestadorServicos();

}