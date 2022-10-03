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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['telefone'] = this.telefone;
    data['celular'] = this.celular;
    data['whatsApp'] = this.whatsApp;
    data['email'] = this.email;
    data['instagramLink'] = this.instagramLink;
    data['faceBookLink'] = this.faceBookLink;
    return data;
  }
}
