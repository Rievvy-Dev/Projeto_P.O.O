class ModeloContato {
  int? id;
  String? telefone;
  String? celular;
  int? whatsApp;
  String? email;
  String? instagramLink;
  String? faceBookLink;

  ModeloContato(
      {this.id,
        this.telefone,
        this.celular,
        this.whatsApp,
        this.email,
        this.instagramLink,
        this.faceBookLink});

  ModeloContato.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    telefone = json['telefone'];
    celular = json['celular'];
    whatsApp = json['whatsApp'];
    email = json['email'];
    instagramLink = json['instagramLink'];
    faceBookLink = json['faceBookLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['telefone'] = telefone;
    data['celular'] = celular;
    data['whatsApp'] = whatsApp;
    data['email'] = email;
    data['instagramLink'] = instagramLink;
    data['faceBookLink'] = faceBookLink;
    return data;
  }
}
