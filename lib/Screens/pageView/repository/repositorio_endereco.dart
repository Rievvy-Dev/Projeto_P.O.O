import 'package:poo_project/Screens/pageView/model/modelo_endereco.dart';

abstract class InterfaceRepositorioEndereco{
  Future<List<ModeloEndereco>> findAllEnderecos();
}