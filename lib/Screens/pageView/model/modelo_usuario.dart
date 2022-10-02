import 'dart:convert';

class ModeloUsuario {
  int id;
  String linkFoto;
  String nome;

  ModeloUsuario({required this.id, required this.linkFoto, required this.nome});



  factory ModeloUsuario.fromJson(Map<String, dynamic> json) {
    return ModeloUsuario(
      id: json['id'],
      linkFoto: json['linkFoto'],
      nome: json['nome'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['linkFoto'] = this.linkFoto;
    data['nome'] = this.nome;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "linkFoto": this.linkFoto,
      "nome": this.nome,
    };
  }

  factory ModeloUsuario.fromMap(Map<String, dynamic> map) {
    return ModeloUsuario(
      id: int.parse(map["id"]),
      linkFoto: map["linkFoto"],
      nome: map["nome"],
    );
  }

//
}
