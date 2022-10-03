class ModeloEndereco {
    String bairro;
    String cep;
    String cidade;
    int id;
    int numero;
    String rua;
    String uf;

    ModeloEndereco({required this.bairro,required this.cep,required this.cidade,required this.id,required this.numero,required this.rua,required this.uf});

    factory ModeloEndereco.fromJson(Map<String, dynamic> json) {
        return ModeloEndereco(
            bairro: json['bairro'], 
            cep: json['cep'], 
            cidade: json['cidade'], 
            id: json['id'], 
            numero: json['numero'], 
            rua: json['rua'], 
            uf: json['uf'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bairro'] = this.bairro;
        data['cep'] = this.cep;
        data['cidade'] = this.cidade;
        data['id'] = this.id;
        data['numero'] = this.numero;
        data['rua'] = this.rua;
        data['uf'] = this.uf;
        return data;
    }

    Map<String, dynamic> toMap() {
    return {
      "bairro": this.bairro,
      "cep": this.cep,
      "cidade": this.cidade,
      "id": this.id,
      "numero": this.numero,
      "rua": this.rua,
      "uf": this.uf,
    };
  }

    factory ModeloEndereco.fromMap(Map<String, dynamic> map) {
    return ModeloEndereco(
      bairro: map["bairro"],
      cep: map["cep"],
      cidade: map["cidade"],
      id: int.parse(map["id"]),
      numero: int.parse(map["numero"]),
      rua: map["rua"],
      uf: map["uf"],
    );
  }
//
}