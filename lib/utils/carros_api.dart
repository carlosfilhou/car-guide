import 'package:city_guide/carro.dart';

class CarrosApi {
  static List<Carro> getCarros() {
    final carros = <Carro>[];

    carros.add(Carro(nome: 'BMW M5', urlFoto: 'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/esportivos/BMW.png'));
    carros.add(Carro(nome: 'MERCEDES-BENZ C63 AMG', urlFoto: 'MERCEDES-BENZ C63 AMG'));
    carros.add(Carro(nome: 'Hudson Hornet', urlFoto: 'https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/classicos/Cadillac_Eldorado.png'));

    return carros;
  }
}
