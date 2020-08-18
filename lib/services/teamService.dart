import 'dart:convert';
import 'dart:io';

import 'package:coach_better/models/teams_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TeamService {
  Network _network = new Network();

  //  Future<List<Teams>> fetchteams() async {
  //   final response = await _network.dio.get(GET_TEAMS_URL);
  //   var mapresponse = _network.decodeResp(response);
  //   final teams = mapresponse['data'].cast<Map<dynamic, dynamic>>();
  //  // var teamId = Teams.fromJson(_network.decodeResp(response)).id;
  //   final listofteam = await teams.map<Teams>((json) {
  //     return Teams.fromJson(json);
  //   }).toList();
  //   return listofteam;
  // }
  // Future<Teams> fetchteams() async {
  //   final response = await _network.dio.get(GET_TEAMS_URL);
  //   final baseresponse = response.data ;
  //   return teamsFromJson(baseresponse as Map<String,dynamic>);
  // }

  Future<Teams> fetchteams() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token');
    final response = await http.get(GET_TEAMS_URL,
        headers: {HttpHeaders.authorizationHeader: "Bearer " + token});
    final baseresponse = json.decode(response.body) ;
    return Teams.fromJson(baseresponse as Map<String, dynamic>);
  }
}
