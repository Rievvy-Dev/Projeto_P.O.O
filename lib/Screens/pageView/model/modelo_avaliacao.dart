import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';

class ModeloAvaliacao {
    String descricao;
    int id;
    ModeloPrestadorServicos idPrestadorservicos;
    ModeloUsuario idUsuario;
    int nota;

    ModeloAvaliacao({required this.descricao,required this.id,required this.idPrestadorservicos,required this.idUsuario,required this.nota});

    factory ModeloAvaliacao.fromJson(Map<String, dynamic> json) {
        return ModeloAvaliacao(
            descricao: json['descricao'], 
            id: json['id'], 
            idPrestadorservicos: json['idPrestadorservicos'] ,
            idUsuario: json['idUsuario'] ,
            nota: json['nota'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['descricao'] = this.descricao;
        data['id'] = this.id;
        data['nota'] = this.nota;
        if (this.idPrestadorservicos != null) {
            data['idPrestadorservicos'] = this.idPrestadorservicos.toJson();
        }
        if (this.idUsuario != null) {
            data['idUsuario'] = this.idUsuario.toJson();
        }
        return data;
    }
}