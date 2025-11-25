import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('url = $url \n token = $token');
    try {
      http.Response response = await http.get(Uri.parse(url), headers: headers);
      log(response.body);
      return jsonDecode(response.body);
    } on HttpException catch (e) {
      throw Exception('this error from http exception $e');
    } catch (e) {
      throw Exception(e);
    }
  }
}
