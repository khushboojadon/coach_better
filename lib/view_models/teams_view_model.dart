import 'package:coach_better/models/teams_model.dart';
import 'package:coach_better/services/teamService.dart';
import 'package:coach_better/view_models/base_model.dart';

class TeamsViewModel extends BaseModel {
  TeamService _teamService = TeamService();
  Teams teams;
  Future getTeams() async {
    setstate(ViewState.Busy);
    teams = await _teamService.fetchteams();
    setstate(ViewState.Idle);
  }
}
