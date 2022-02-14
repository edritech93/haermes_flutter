import 'package:haermes_flutter/constants/index.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class AuthApi {
  Future<dynamic> login() async {
    try {
      var response = await http.get(Uri.parse(BASE_URL + 'users123'));
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse;
      } else {
        throw Exception(response);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
