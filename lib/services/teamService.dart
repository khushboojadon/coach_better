import 'package:coach_better/models/teams_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';

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
  Future<Teams> fetchteams() async {
    final response = await _network.dio.get(GET_TEAMS_URL);
    final baseresponse = response.data ;
    return teamsFromJson(baseresponse as Map<String,dynamic>);
  }
}
