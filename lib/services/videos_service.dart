import 'package:coach_better/models/video_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VideoService {
  Network _network = new Network();
  //  Future<List<Video>> fetchVideos() async {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int seasonid = prefs.getInt('season_id');
  //   int teamid = prefs.getInt('teamId');
  //   final response = await _network.dio.get('$BASE_URL/api/videos?team_id=$teamid&season_id=$seasonid');
  //   var mapresponse = _network.decodeResp(response);
  //   final teams = mapresponse['data'].cast<Map<dynamic, dynamic>>();
  //   final listofVideo = await teams.map<Video>((json) {
  //     return Video.fromJson(json);
  //   }).toList();
  //   return listofVideo;
  // }

  Future<Videos> fetchVideos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int teamid = prefs.getInt('teamId');
    int seasonid = prefs.getInt('season_id');

    final response = await _network.dio
        .get('$GET_VIDEOS_URL$teamid&season_id=$seasonid');
    //  print(response.data);
    final baseResponse = response.data as Map<String, dynamic>;
    return videosFromJson(baseResponse);
  }
}
