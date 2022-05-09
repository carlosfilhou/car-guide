class Carro {
  late int id;
  late String nome;
  late String tipo;
  late String descricao;
  late String urlFoto;
  late String urlVideo;
  late String latitude;
  late String longitude;

  Carro({
    required this.id,
    required this.nome,
    required this.tipo,
    required this.descricao,
    required this.urlFoto,
    required this.urlVideo,
    required this.latitude,
    required this.longitude,
  });

  Carro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    tipo = json['tipo'];
    descricao = json['descrição'];
    urlFoto = json['urlFoto'];
    urlVideo = json['urlVideo'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['tipo'] = this.tipo;
    data['descricao'] = this.descricao;
    data['urlFoto'] = this.urlFoto;
    data['urlVideo'] = this.urlVideo;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
