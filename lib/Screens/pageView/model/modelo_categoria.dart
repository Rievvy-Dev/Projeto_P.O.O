class ModeloCategoria {
    int id;
    String nome;

    ModeloCategoria({required this.id,required this.nome});

    factory ModeloCategoria.fromJson(Map<String, dynamic> json) {
        return ModeloCategoria(
            id: json['id'], 
            nome: json['nome'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['nome'] = this.nome;
        return data;
    }

    Map<String, dynamic> toMap() {
    return {
      "id": this.id,
      "nome": this.nome,
    };
  }

    factory ModeloCategoria.fromMap(Map<String, dynamic> map) {
    return ModeloCategoria(
      id: int.parse(map["id"]),
      nome: map["nome"],
    );
  }
//
}