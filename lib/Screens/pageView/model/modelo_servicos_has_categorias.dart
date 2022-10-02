import 'package:poo_project/Screens/pageView/model/modelo_categoria.dart';
import 'package:poo_project/Screens/pageView/model/modelo_servicos.dart';

class ModeloServicosHasCategorias {
    int id;
    ModeloCategoria idCategoria;
    ModeloServicos idServicos;

    ModeloServicosHasCategorias({required this.id,required this.idCategoria,required this.idServicos});

    factory ModeloServicosHasCategorias.fromJson(Map<String, dynamic> json) {
        return ModeloServicosHasCategorias(
            id: json['id'], 
            idCategoria: json['idCategoria'] ,
            idServicos: json['idServicos'] ,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        if (this.idCategoria != null) {
            data['idCategoria'] = this.idCategoria.toJson();
        }
        if (this.idServicos != null) {
            data['idServicos'] = this.idServicos.toJson();
        }
        return data;
    }

    Map<String, dynamic> toMap() {
        return {
          "id": this.id,
          "idCategoria": this.idCategoria,
          "idServicos": this.idServicos,
        };
  }

    factory ModeloServicosHasCategorias.fromMap(Map<String, dynamic> map) {
        return ModeloServicosHasCategorias(
          id: int.parse(map["id"]),
          idCategoria: ModeloCategoria.fromJson(map["idCategoria"]),
          idServicos: ModeloServicos.fromJson(map["idServicos"]),
        );
  }
//
}