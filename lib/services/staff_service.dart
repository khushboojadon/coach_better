import 'package:coach_better/models/staff_model.dart';
import 'package:coach_better/services/network.dart';
import 'package:coach_better/utils/Urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StaffService {
  Network _network = Network();

  var allstaff = List<Staff>();
  // Future<List<Staff>> fetchallstaff() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   int teamid = prefs.getInt('teamId');
  //   final response =
  //       await _network.dio.get("$BASE_URL/api/teams/$teamid/staff");
  //   var mapresponse = _network.decodeResp(response);
  //   var staffJson = mapresponse['data'];
  //   for (var jsonstaff in staffJson) {
  //     allstaff.add(Staff.fromJson(jsonstaff));
  //   }
  //   return allstaff;
  // }

  Future<Staff> fetchallstaff() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int teamid = prefs.getInt('teamId');
    final response =
        await _network.dio.get("$GET_STAFFS_URL$teamid/staff");
    //print(response.data);
    final baseResponse = response.data as Map<String, dynamic>;
    return staffFromJson(baseResponse);
  }
}
