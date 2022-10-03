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
            ? new ModeloPrestadorServicos.fromJson(json['idPrestadorservicos'])
            : null;
        idUsuario = json['idUsuario'] != null
            ? new ModeloUsuario.fromJson(json['idUsuario'])
            : null;
        nota = json['nota'];
        descricao = json['descricao'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        if (this.idPrestadorservicos != null) {
            data['idPrestadorservicos'] = this.idPrestadorservicos!.toJson();
        }
        if (this.idUsuario != null) {
            data['idUsuario'] = this.idUsuario!.toJson();
        }
        data['nota'] = this.nota;
        data['descricao'] = this.descricao;
        return data;
    }
}


