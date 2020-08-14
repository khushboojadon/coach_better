import 'dart:convert';

import 'package:coach_better/models/data.dart';
import 'package:coach_better/models/training_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class TrainingService {
  Network _network = Network();
  var alltrainings = new List<Training>();

  Future<int> fetchtrainingscount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int seasonid = prefs.getInt('season_id');
    final response =
        await _network.dio.get("$GET_TRAININGS_URL$seasonid/trainings");
    var mapresponse = _network.decodeResp(response);
    var trainingJson = mapresponse['data'] as List;
    var trainings = trainingJson.length;
    return trainings;
  }

  // Future<List<Training>> fetchalltrainings() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int seasonid = prefs.getInt('season_id');
  //   final response = await _network.dio
  //       .get("$GET_TRAININGS_URL$seasonid/trainings");
  //   var mapresponse = _network.decodeResp(response);
  //   var trainingJson = mapresponse['data'];
  //   for (var jsonTraining in trainingJson) {
  //     alltrainings.add(Training.fromJson(jsonTraining));
  //   }
  //   return alltrainings;
  // }
  Future<Data> fetchtrainings() async {
    var response = await http
        .get('https://run.mocky.io/v3/e822bbe9-b6d7-422f-af8d-59baf591d9cd');
    return Data.fromJson(json.decode(response.body));
  }
}
