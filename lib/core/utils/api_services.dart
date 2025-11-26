import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);

  Future<Map<String, dynamic>> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    Response response = await _dio.get(url, options: Options(headers: headers));
    return response.data;
  }
}
