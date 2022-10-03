import 'package:poo_project/Screens/pageView/model/modelo_contato.dart';

abstract class InterfaceRepositorioContato{
  Future<List<ModeloContato>> findAllContatos();
}