
class ModeloUsuario {
  int? id;
  String? nome;
  String? linkFoto;

  ModeloUsuario({this.id, this.nome, this.linkFoto});

  ModeloUsuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    linkFoto = json['linkFoto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['linkFoto'] = linkFoto;
    return data;
  }
}

