// ignore_for_file: prefer_collection_literals

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
    descricao = json['descricao'] ?? 'descricao...';
    urlFoto = json['urlFoto'] ?? 'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/MERCEDES_BENZ_AMG.png' ;
    urlVideo = json['urlVideo'] ?? 'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/mercedes.mp4';
    latitude = json['latitude'] ?? "-23.564224";
    longitude = json['longitude'] ?? "-46.653156";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
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
