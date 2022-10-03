
import 'package:poo_project/Screens/pageView/model/modelo_avaliacao.dart';

abstract class RepositorioAvaliacao{
  Future<List<ModeloAvaliacao>> findAllAvaliacoes();
}