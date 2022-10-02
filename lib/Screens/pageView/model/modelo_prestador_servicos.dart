import 'package:poo_project/Screens/pageView/model/modelo_contato.dart';
import 'package:poo_project/Screens/pageView/model/modelo_endereco.dart';

import 'modelo_contato.dart';
import 'modelo_endereco.dart';

class ModeloPrestadorServicos {
    int aceitaPix;
    int aceitarAgendamento;
    int aceitarCartao;
    int atende24H;
    int atendeDomiciliar;
    String cpf;
    int fazDelivery;
    String fotoPerfil;
    int id;
    ModeloContato idContato;
    ModeloEndereco idEndereco;
    int levaTraz;
    int mostrarEndereco;
    String nome;
    String senha;

    ModeloPrestadorServicos({
        required this.id,
        required this.idContato,
        required this.idEndereco,
        required this.aceitaPix,
        required this.aceitarAgendamento,
        required this.aceitarCartao,
        required this.atende24H,
        required this.atendeDomiciliar,
        required this.cpf,
        required this.fazDelivery,
        required this.fotoPerfil,
        required this.levaTraz,
        required this.mostrarEndereco,
        required this.nome,
        required this.senha});

    factory ModeloPrestadorServicos.fromJson(Map<String, dynamic> json) {
        return ModeloPrestadorServicos(
            aceitaPix: json['aceitaPix'], 
            aceitarAgendamento: json['aceitarAgendamento'], 
            aceitarCartao: json['aceitarCartao'], 
            atende24H: json['atende24H'], 
            atendeDomiciliar: json['atendeDomiciliar'], 
            cpf: json['cpf'], 
            fazDelivery: json['fazDelivery'], 
            fotoPerfil: json['fotoPerfil'], 
            id: json['id'],
            idContato: json['idContato'] ,
            idEndereco: json['idEndereco'] ,
            levaTraz: json['levaTraz'], 
            mostrarEndereco: json['mostrarEndereco'], 
            nome: json['nome'], 
            senha: json['senha'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['aceitaPix'] = this.aceitaPix;
        data['aceitarAgendamento'] = this.aceitarAgendamento;
        data['aceitarCartao'] = this.aceitarCartao;
        data['atende24H'] = this.atende24H;
        data['atendeDomiciliar'] = this.atendeDomiciliar;
        data['cpf'] = this.cpf;
        data['fazDelivery'] = this.fazDelivery;
        data['fotoPerfil'] = this.fotoPerfil;
        data['id'] = this.id;
        data['levaTraz'] = this.levaTraz;
        data['mostrarEndereco'] = this.mostrarEndereco;
        data['nome'] = this.nome;
        data['senha'] = this.senha;
        if (this.idContato != null) {
            data['idContato'] = this.idContato.toJson();
        }
        if (this.idEndereco != null) {
            data['idEndereco'] = this.idEndereco.toJson();
        }
        return data;
    }

    Map<String, dynamic> toMap() {
    return {
      "aceitaPix": this.aceitaPix,
      "aceitarAgendamento": this.aceitarAgendamento,
      "aceitarCartao": this.aceitarCartao,
      "atende24H": this.atende24H,
      "atendeDomiciliar": this.atendeDomiciliar,
      "cpf": this.cpf,
      "fazDelivery": this.fazDelivery,
      "fotoPerfil": this.fotoPerfil,
      "id": this.id,
      "idContato": this.idContato,
      "idEndereco": this.idEndereco,
      "levaTraz": this.levaTraz,
      "mostrarEndereco": this.mostrarEndereco,
      "nome": this.nome,
      "senha": this.senha,
    };
  }

    factory ModeloPrestadorServicos.fromMap(Map<String, dynamic> map) {
    return ModeloPrestadorServicos(
      aceitaPix: int.parse(map["aceitaPix"]),
      aceitarAgendamento: int.parse(map["aceitarAgendamento"]),
      aceitarCartao: int.parse(map["aceitarCartao"]),
      atende24H: int.parse(map["atende24H"]),
      atendeDomiciliar: int.parse(map["atendeDomiciliar"]),
      cpf: map["cpf"],
      fazDelivery: int.parse(map["fazDelivery"]),
      fotoPerfil: map["fotoPerfil"],
      id: int.parse(map["id"]),
      idContato: ModeloContato.fromJson(map["idContato"]),
      idEndereco: ModeloEndereco.fromJson(map["idEndereco"]),
      levaTraz: int.parse(map["levaTraz"]),
      mostrarEndereco: int.parse(map["mostrarEndereco"]),
      nome: map["nome"],
      senha: map["senha"],
    );
  }
//
}