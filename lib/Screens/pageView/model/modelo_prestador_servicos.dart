import 'package:poo_project/Screens/pageView/model/modelo_contato.dart';
import 'package:poo_project/Screens/pageView/model/modelo_endereco.dart';

import 'modelo_contato.dart';
import 'modelo_endereco.dart';

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
  int? mostrarEndereco;
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
        this.mostrarEndereco,
        this.nome,
        this.fotoPerfil,
        this.cpf,
        this.senha});

  ModeloPrestadorServicos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idEndereco = json['idEndereco'] != null
        ? new ModeloEndereco.fromJson(json['idEndereco'])
        : null;
    idContato = json['idContato'] != null
        ? new ModeloContato.fromJson(json['idContato'])
        : null;
    aceitarAgendamento = json['aceitarAgendamento'];
    aceitarCartao = json['aceitarCartao'];
    aceitaPix = json['aceitaPix'];
    atende24H = json['atende24H'];
    fazDelivery = json['fazDelivery'];
    levaTraz = json['levaTraz'];
    atendeDomiciliar = json['atendeDomiciliar'];
    mostrarEndereco = json['mostrarEndereco'];
    nome = json['nome'];
    fotoPerfil = json['fotoPerfil'];
    cpf = json['cpf'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.idEndereco != null) {
      data['idEndereco'] = this.idEndereco!.toJson();
    }
    if (this.idContato != null) {
      data['idContato'] = this.idContato!.toJson();
    }
    data['aceitarAgendamento'] = this.aceitarAgendamento;
    data['aceitarCartao'] = this.aceitarCartao;
    data['aceitaPix'] = this.aceitaPix;
    data['atende24H'] = this.atende24H;
    data['fazDelivery'] = this.fazDelivery;
    data['levaTraz'] = this.levaTraz;
    data['atendeDomiciliar'] = this.atendeDomiciliar;
    data['mostrarEndereco'] = this.mostrarEndereco;
    data['nome'] = this.nome;
    data['fotoPerfil'] = this.fotoPerfil;
    data['cpf'] = this.cpf;
    data['senha'] = this.senha;
    return data;
  }
}

