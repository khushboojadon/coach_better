import 'package:coach_better/models/match_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MatchService {
  Network _network = Network();
//  var allmatches = List<MatchModel>();
  Future<int> fetchmatchescount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int seasonid = prefs.getInt('season_id');
    final response =
        await _network.dio.get("$GET_MATCHES_URL$seasonid/matches");
    var mapresponse = _network.decodeResp(response);
    var matchJson = mapresponse['data'] as List;
    var matches = matchJson.length;
    // print(matches);
    return matches;
  }

  // Future<List<MatchModel>> fetchallmatches() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int seasonid = prefs.getInt('season_id');
  //   final response = await _network.dio
  //       .get("$GET_MATCHES_URL$seasonid/matches");
  //   var mapresponse = _network.decodeResp(response);
  //   var matchJson = mapresponse['data'];
  //   for (var jsonmatch in matchJson) {
  //     allmatches.add(MatchModel.fromJson(jsonmatch));
  //   }
  //   return allmatches;
  // }

  Future<Matches> fetchallmatches() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int seasonid = prefs.getInt('season_id');
    final response =
        await _network.dio.get("$GET_MATCHES_URL$seasonid/matches");
    var baseresponse = response.data as Map<String, dynamic>;
    return matchesFromJson(baseresponse);
  }
}
