class ModeloContato {
    String celular;
    String email;
    String faceBookLink;
    int id;
    String instagramLink;
    String telefone;
    int whatsApp;

    ModeloContato({required this.celular,required this.email,required this.faceBookLink,required this.id,required this.instagramLink,required this.telefone,required this.whatsApp});

    factory ModeloContato.fromJson(Map<String, dynamic> json) {
        return ModeloContato(
            celular: json['celular'], 
            email: json['email'], 
            faceBookLink: json['faceBookLink'], 
            id: json['id'], 
            instagramLink: json['instagramLink'], 
            telefone: json['telefone'], 
            whatsApp: json['whatsApp'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['celular'] = this.celular;
        data['email'] = this.email;
        data['faceBookLink'] = this.faceBookLink;
        data['id'] = this.id;
        data['instagramLink'] = this.instagramLink;
        data['telefone'] = this.telefone;
        data['whatsApp'] = this.whatsApp;
        return data;
    }

    Map<String, dynamic> toMap() {
    return {
      "celular": this.celular,
      "email": this.email,
      "faceBookLink": this.faceBookLink,
      "id": this.id,
      "instagramLink": this.instagramLink,
      "telefone": this.telefone,
      "whatsApp": this.whatsApp,
    };
  }

    factory ModeloContato.fromMap(Map<String, dynamic> map) {
    return ModeloContato(
      celular: map["celular"],
      email: map["email"],
      faceBookLink: map["faceBookLink"],
      id: int.parse(map["id"]),
      instagramLink: map["instagramLink"],
      telefone: map["telefone"],
      whatsApp: int.parse(map["whatsApp"]),
    );
  }
//
}