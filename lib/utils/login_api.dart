import 'dart:convert';

import 'package:city_guide/utils/api_response.dart';
import 'package:city_guide/utils/users.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<ApiResponse<Usuario>?> login(String login, String senha) async {
    var url = Uri.parse('https://carros-springboot.herokuapp.com/api/v2/login');

    Map<String, String> headers = {
      'Content-Type': 'application/json',
    };

    Map params = {
      "username": login,
      "password": senha,
    };

    String s = json.encode(params);
    print('> $s');

    var response = await http.post(url, body: s, headers: headers);
    
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    // lembrando que só funciona desse jeito quando o objeto vem entre chaves {}, se vier entre colchetes [], é uma lista. Aí será feito de outra maneira.
    Map<String, dynamic> mapResponse = json.decode(response.body);

    if (response.statusCode == 200) {
      final user = Usuario.fromJson(mapResponse);

      return ApiResponse.ok(user);
    }

    return ApiResponse.error(mapResponse['error']);
  }
}
