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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bairro'] = this.bairro;
    data['cep'] = this.cep;
    data['cidade'] = this.cidade;
    data['rua'] = this.rua;
    data['numero'] = this.numero;
    data['uf'] = this.uf;
    return data;
  }
}
