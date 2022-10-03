class ModeloEndereco {
  int? id;
  String? bairro;
  String? cep;
  String? cidade;
  String? rua;
  int? numero;
  String? uf;

  ModeloEndereco(
      {this.id,
        this.bairro,
        this.cep,
        this.cidade,
        this.rua,
        this.numero,
        this.uf});

  ModeloEndereco.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bairro = json['bairro'];
    cep = json['cep'];
    cidade = json['cidade'];
    rua = json['rua'];
    numero = json['numero'];
    uf = json['uf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['bairro'] = bairro;
    data['cep'] = cep;
    data['cidade'] = cidade;
    data['rua'] = rua;
    data['numero'] = numero;
    data['uf'] = uf;
    return data;
  }
}
