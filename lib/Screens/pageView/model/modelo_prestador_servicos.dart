import 'package:poo_project/Screens/pageView/model/modelo_contato.dart';
import 'package:poo_project/Screens/pageView/model/modelo_endereco.dart';


class ModeloPrestadorServicos {
  int? id;
  ModeloEndereco? idEndereco;
  ModeloContato? idContato;
  int? aceitarAgendamento;
  int? aceitarCartao;
  int? aceitaPix;
  int? atende24H;
  int? fazDelivery;
  int? levaTraz;
  int? atendeDomiciliar;
  String? nome;
  String? fotoPerfil;
  String? cpf;
  String? senha;

  ModeloPrestadorServicos(
      {this.id,
      this.idEndereco,
      this.idContato,
      this.aceitarAgendamento,
      this.aceitarCartao,
      this.aceitaPix,
      this.atende24H,
      this.fazDelivery,
      this.levaTraz,
      this.atendeDomiciliar,
      this.nome,
      this.fotoPerfil,
      this.cpf,
      this.senha});

  ModeloPrestadorServicos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idEndereco = json['idEndereco'] != null
        ? ModeloEndereco.fromJson(json['idEndereco'])
        : null;
    idContato = json['idContato'] != null
        ? ModeloContato.fromJson(json['idContato'])
        : null;
    aceitarAgendamento = json['aceitarAgendamento'];
    aceitarCartao = json['aceitarCartao'];
    aceitaPix = json['aceitaPix'];
    atende24H = json['atende24H'];
    fazDelivery = json['fazDelivery'];
    levaTraz = json['levaTraz'];
    atendeDomiciliar = json['atendeDomiciliar'];

    nome = json['nome'];
    fotoPerfil = json['fotoPerfil'];
    cpf = json['cpf'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (idEndereco != null) {
      data['idEndereco'] = idEndereco!.toJson();
    }
    if (idContato != null) {
      data['idContato'] = idContato!.toJson();
    }
    data['aceitarAgendamento'] = aceitarAgendamento;
    data['aceitarCartao'] = aceitarCartao;
    data['aceitaPix'] = aceitaPix;
    data['atende24H'] = atende24H;
    data['fazDelivery'] = fazDelivery;
    data['levaTraz'] = levaTraz;
    data['atendeDomiciliar'] = atendeDomiciliar;
    data['nome'] = nome;
    data['fotoPerfil'] = fotoPerfil;
    data['cpf'] = cpf;
    data['senha'] = senha;
    return data;
  }
}
