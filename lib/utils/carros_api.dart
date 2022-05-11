// ignore_for_file: deprecated_member_use, prefer_collection_literals, unused_local_variable

import 'package:city_guide/carro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarrosApi {
  static Future<List<Carro>> getCarros() async {
    var url =
        Uri.parse('https://carros-springboot.herokuapp.com/api/v1/carros');

    print('GET > $url');

    var response = await http.get(url);

    List list = json.decode(response.body);

    final carros = <Carro>[];

    for (Map<String, dynamic> map in list) {
      Carro c = Carro.fromJson(map);
      carros.add(c);
    }

    return carros;
  }
}
