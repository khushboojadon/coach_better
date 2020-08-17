import 'dart:convert';

import 'package:coach_better/models/user_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Authentication {
  Network _network = new Network();

  Future<void> settoken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', value);
  }

  Future<void> setuserdetail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
  }

  Future<User> login(String email, String password) async {
    setuserdetail(email);
    var response = await _network.dio
        .post("$LOGIN_URL?email=$email&password=$password")
        .then((response) {
      if (response.statusCode == 200) {
        var token = User.fromJson(_network.decodeResp(response)).accessToken;

        settoken(token);
        return User.fromJson(_network.decodeResp(response));
      } else {
        return User();
      }
    }).catchError((error) {
      return User();
    });
    return response;
  }

  // Future<bool> login(String email, String password) async {
  //   setuserdetail(email);
  //   final response =
  //       await http.post("$LOGIN_URL?email=$email&password=$password");
  //   if (response.statusCode == 200) {
  //     var token = User.fromJson(json.decode(response.body)).accessToken;
  //     print(token);
  //     settoken(token);
  //     return true;
  //   }
  //   return false;
  // }

  Future<void> logout() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var response = await _network.dio.post("$LOGOUT_URL");
    if (response.statusCode == 200) {
      pref.remove('token');
      pref.remove('email');
      pref.remove('teamId');
    } else {
      print("statusCode : ${response.statusCode}");
    }

    print(pref.getString('token'));
    print(pref.getString('email'));
  }
}
