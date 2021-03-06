import 'package:coach_better/models/players_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PlayerService {
  Network _network = new Network();
  // Future<List<Player>> fetchplayers() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int teamId = prefs.getInt('teamId');
  //   final response = await _network.dio.get("$GET_PLAYERS_URL$teamId/players");

  //   var mapresponse = _network.decodeResp(response);
  //   var playerJson = mapresponse['data'] as List;
  //   return playerJson.map((e) => Player.fromJson(e)).toList();
  // }
  Future<Players> fetchallplayers() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int teamid = prefs.getInt('teamId');
    final response = await _network.dio.get("$GET_PLAYERS_URL$teamid/players");
    final baseResponse = response.data as Map<String, dynamic>;
    return playersFromJson(baseResponse);
  }

  // Future<Players> fetchallplayers() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int teamid = prefs.getInt('teamId');

  //   String token = prefs.getString('token');
  //   final response = await http.get("$GET_PLAYERS_URL$teamid/players",
  //       headers: {HttpHeaders.authorizationHeader: "Bearer " + token});
  //   final baseResponse = json.decode(response.body);
  //   return playersFromJson(baseResponse as Map<String, dynamic>);
  // }

   fetchPlayercount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int teamId = prefs.getInt('teamId');
    final response = await _network.dio.get("$GET_PLAYERS_URL$teamId/players");
    var mapresponse = _network.decodeResp(response);
    var playerJson = mapresponse['data'] as List;
    var player = playerJson.length;
    return player;
  }

  // Future<void> addplayer(
  //     // var image,
  //     String position,
  //     String subposition,
  //     String firstname,
  //     String lastname,
  //     String foot,
  //     int number,
  //     String gender,
  //     String tag) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int teamId = prefs.getInt('teamId');

  //   FormData data = FormData.fromMap({
  //     "team_id": teamId,
  //     // "image": await MultipartFile.fromFile(image.path, filename: image),
  //     "position": position,
  //     "sub_position": subposition,
  //     "first_name": firstname,
  //     "last_name": lastname,
  //     "foot": foot,
  //     "number": number,
  //     "gender": gender,
  //     "tag": tag
  //   });
  //   final response = await _network.dio.post(
  //     "$ADD_PLAYERS_URL",
  //     data: data,
  //   );
  // }

  Future<bool> addplayer(
    //  var image,
      String position,
      String subposition,
      String firstname,
      String lastname,
      String foot,
      int number,
      String gender,
      String tag) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int teamId = prefs.getInt('teamId');
    FormData requestbody = FormData.fromMap({
      "team_id": teamId,
     // "image": await MultipartFile.fromFile(image.path, filename: image),
      "position": position,
      "sub_position": subposition,
      "first_name": firstname,
      "last_name": lastname,
      "foot": foot,
      "number": number,
      "gender": gender,
      "tag": tag
    });
    final response = await _network.dio.post(
      'http://localhost:8000/api/players/',
      data: requestbody,
      options: Options(
          followRedirects: true,
          validateStatus: (status) {
            return status <= 350;
          }),
    );
    if (response.statusCode == 201) {
      return true;
    }
    return false;
  }

//   Future<bool> addplayer(
//       // var image,

//       String position,
//       String subposition,
//       String firstname,
//       String lastname,
//       String foot,
//       int number,
//       String gender,
//       String tag) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     int teamId = prefs.getInt('teamId');

//     String token = prefs.getString('token');
//     // FormData requestbody = FormData.fromMap({
//     //   "team_id": teamId,
//     //   // "image": await MultipartFile.fromFile(image.path, filename: image),
//     //   "position": position,
//     //   "sub_position": subposition,
//     //   "first_name": firstname,
//     //   "last_name": lastname,
//     //   "foot": foot,
//     //   "number": number,
//     //   "gender": gender,
//     //   "tag": tag
//     // });
// var requestbody={
//     "team_id": teamId,
//       // "image": await MultipartFile.fromFile(image.path, filename: image),
//       "position": position,
//       "sub_position": subposition,
//       "first_name": firstname,
//       "last_name": lastname,
//       "foot": foot,
//       "number": number,
//       "gender": gender,
//       "tag": tag
// };
//     final response = await http.post(
//       'http://localhost:8000/api/players/',
//      headers: {HttpHeaders.authorizationHeader: "Bearer " + token,
//      'Content-type': 'application/x-www-form-urlencoded'},
//       body:jsonEncode(requestbody) ,
//     );
//     if (response.statusCode == 201) {
//       return true;
//     }
//     return false;
//   }

  Future<bool> deletePlayer(int playerId) async {
    final response = await _network.dio
        .delete("http://localhost:8000/api/players/$playerId");
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
