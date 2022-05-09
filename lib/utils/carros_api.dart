import 'package:city_guide/carro.dart';

class CarrosApi {
  static List<Carro> getCarros() {
    final carros = <Carro>[];

    carros.add(Carro(
      id: 13361,
      nome: 'BMW M5',
      tipo: 'esportivos',
      descricao: 'Desc BMW M5',
      urlFoto:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/BMW.png',
      urlVideo:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/bmw-m5.mp4',
      latitude: '-23.564224',
      longitude: '-46.653156',
    ));
    carros.add(Carro(
      id: 13371,
      nome: 'Renault Megane RS Trophy',
      tipo: 'esportivos',
      descricao: 'Desc Renault Megane RS Trophy',
      urlFoto:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Renault_Megane_Trophy.png',
      urlVideo:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/renault_megane.mp4',
      latitude: '-23.564224',
      longitude: '-46.653156',
    ));
    carros.add(Carro(
      id: 13381,
      nome: 'Maserati Grancabrio Sport',
      tipo: 'esportivos',
      descricao: 'Desc Maserati Grancabrio Sport',
      urlFoto:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/Maserati_Grancabrio_Sport.png',
      urlVideo:
          'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/classicos/cadillac_eldorado.mp4',
      latitude: '-23.564224',
      longitude: '-46.653156',
    ));

    return carros;
  }
}
