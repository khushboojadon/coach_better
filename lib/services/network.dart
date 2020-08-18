import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Network {
  final JsonDecoder _decoder = new JsonDecoder();
  dynamic decodeResp(d) {
    var response = d as Response;
    final dynamic jsonBody = response.data;
    final statusCode = response.statusCode;
    if (jsonBody == null) {
      throw new Exception("statusCode:$statusCode");
    }
    if (jsonBody is String) {
      return _decoder.convert(jsonBody);
    } else {
      return jsonBody;
    }
  }

  Dio get dio {
    Dio dio = new Dio();
   // dio.options.connectTimeout = 20000;
    dio.options.headers['content-Type'] = 'application/x-www-form-urlencoded';
    
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('token');
      if (token != null) {
        options.headers["Authorization"] = "Bearer " + token;
      }
      return options;
    }, 
    onResponse: (Response response) async {
      return response;
    }, onError: (DioError error) async {
      return error;
    }));
    return dio;
  }

 
}
