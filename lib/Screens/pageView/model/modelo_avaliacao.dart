import 'package:poo_project/Screens/pageView/model/modelo_prestador_servicos.dart';
import 'package:poo_project/Screens/pageView/model/modelo_usuario.dart';

class ModeloAvaliacao {
    int? id;
    ModeloPrestadorServicos? idPrestadorservicos;
    ModeloUsuario? idUsuario;
    int? nota;
    String? descricao;

    ModeloAvaliacao(
        {this.id,
            this.idPrestadorservicos,
            this.idUsuario,
            this.nota,
            this.descricao});

    ModeloAvaliacao.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        idPrestadorservicos = json['idPrestadorservicos'] != null
            ? ModeloPrestadorServicos.fromJson(json['idPrestadorservicos'])
            : null;
        idUsuario = json['idUsuario'] != null
            ? ModeloUsuario.fromJson(json['idUsuario'])
            : null;
        nota = json['nota'];
        descricao = json['descricao'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['id'] = id;
        if (idPrestadorservicos != null) {
            data['idPrestadorservicos'] = idPrestadorservicos!.toJson();
        }
        if (idUsuario != null) {
            data['idUsuario'] = idUsuario!.toJson();
        }
        data['nota'] = nota;
        data['descricao'] = descricao;
        return data;
    }
}


