import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';
import 'package:poo_project/Screens/pageView/model/modelo_servicos.dart';

class ModeloServicosHasCategorias {
  int? id;
  ModeloServicos? idServicos;
  ModeloCategoria? idCategoria;

  ModeloServicosHasCategorias({this.id, this.idServicos, this.idCategoria});

  ModeloServicosHasCategorias.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idServicos = json['idServicos'] != null
        ? ModeloServicos.fromJson(json['idServicos'])
        : null;
    idCategoria = json['idCategoria'] != null
        ? ModeloCategoria.fromJson(json['idCategoria'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (idServicos != null) {
      data['idServicos'] = idServicos!.toJson();
    }
    if (idCategoria != null) {
      data['idCategoria'] = idCategoria!.toJson();
    }
    return data;
  }
}
