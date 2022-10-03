class ModeloServicos {
  int? id;
  String? nome;

  ModeloServicos({this.id, this.nome});

  ModeloServicos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    return data;
  }
}