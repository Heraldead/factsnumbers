import 'dart:convert';

import 'package:dio/dio.dart';

class ApiHelper {
  static const String _rootPath = "http://numbersapi.com/";

  static Future<Map<String, dynamic>> getApiHelper(
    String path,
  ) async {
    Dio dio = Dio();
    Map<String, dynamic> data = {};
    Map<String, dynamic> header = Map();
    Map<String, dynamic> error = Map();
    error['message'] = "Неизвестная ошибка";
    header['Content-Type'] = 'application/json';
    header['Accept'] = 'application/json';

    Response<dynamic>? response;
    try {
      response = await dio.get("$_rootPath$path?json",
          options: Options(headers: header), queryParameters: data);
      response;
    } catch (e) {
      return error;
    }
    if (response != null) {
      response;

      if (response.statusCode == 404) {
        ///Такого факта не существует
        error['message'] = "Адрес запроса не найден";
        return error;
      } else if (response.statusCode == 401) {
        ///Не авторизован
        error['message'] = "Не авторизован";
        return error;
      } else if (response.statusCode == 200) {
        ///Ок
        response.data;
        dynamic resultD = response.data;
        resultD;

        // Map<String, dynamic> resultM = resultD as Map<String, dynamic>;
        Map<String, dynamic> resultM = Map<String, dynamic>();
        resultM['data'] = resultD;
        return resultM;
      } else {
        return error;
      }
    } else {
      return error;
    }
  }
}
