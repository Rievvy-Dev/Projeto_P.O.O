class ModeloServicos {
    int id;
    String nome;

    ModeloServicos({required this.id,required this.nome});

    factory ModeloServicos.fromJson(Map<String, dynamic> json) {
        return ModeloServicos(
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

    factory ModeloServicos.fromMap(Map<String, dynamic> map) {
    return ModeloServicos(
      id: int.parse(map["id"]),
      nome: map["nome"],
    );
  }
//
}