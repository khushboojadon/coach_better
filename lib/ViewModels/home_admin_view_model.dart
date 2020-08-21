import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/services/training_service.dart';

class HomeAdminViewModel extends BaseModel {
  MatchService _matchService = MatchService();
  PlayerService _playerService = PlayerService();
  TrainingService _trainingService = TrainingService();
  int playercount;
  int matchcount;
  int trainingcount;
  int eventcount;
  getmatchcount() async {
    setstate(ViewState.Busy);
    matchcount = await _matchService.fetchmatchescount();
    setstate(ViewState.Idle);
    return matchcount;
  }

  gettrainingcount() async {
    setstate(ViewState.Busy);
    trainingcount = await _trainingService.fetchtrainingscount();

    setstate(ViewState.Idle);
    return trainingcount;
  }

  getplayercount() async {
    setstate(ViewState.Busy);
    playercount = await _playerService.fetchPlayercount();
    setstate(ViewState.Idle);
    return playercount;
  }

  getevents() async {
    setstate(ViewState.Busy);
    matchcount =await getmatchcount();
    trainingcount = await gettrainingcount();
    eventcount = matchcount + trainingcount;
    setstate(ViewState.Idle);
    return eventcount;
  }
}
