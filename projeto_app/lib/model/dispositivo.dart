class Dispositivo {
  int uid;
  String nome;
  String descricao;
  String status;

  Dispositivo(this.uid, this.nome, this.descricao, this.status);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'nome': nome,
      'descricao': descricao,
      'status': status
    };
  }

  factory Dispositivo.fromJson(Map<String, dynamic> json) {
    return Dispositivo(
      json['uid'],
      json['nome'],
      json['descricao'],
      json['status']
    );
  }
}