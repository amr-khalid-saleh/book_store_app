import 'dart:convert';
import 'dart:developer';
import 'package:book_store/core/error/failure.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('url = $url \n token = $token');
    try {
      Response response = await Dio().get(
        url,
        options: Options(headers: headers),
      );
      log(response.data);
      return jsonDecode(response.data);
    } on DioException catch (e) {
      return ServerFailure.fromDioException(e);
    } catch (e) {
      return ServerFailure(e.toString());
    }
  }
}
