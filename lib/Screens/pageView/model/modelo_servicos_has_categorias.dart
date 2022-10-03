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
        ? new ModeloServicos.fromJson(json['idServicos'])
        : null;
    idCategoria = json['idCategoria'] != null
        ? new ModeloCategoria.fromJson(json['idCategoria'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.idServicos != null) {
      data['idServicos'] = this.idServicos!.toJson();
    }
    if (this.idCategoria != null) {
      data['idCategoria'] = this.idCategoria!.toJson();
    }
    return data;
  }
}
