import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/services/training_service.dart';
import 'package:coach_better/view_models/base_model.dart';

class HomeAdminViewModel extends BaseModel {
  PlayerService _playerService = PlayerService();
  MatchService _matchService = MatchService();
  TrainingService _trainingService = TrainingService();

  Future<int> playercount() async 
  {
    setstate(ViewState.Busy);
    var response = await _playerService.fetchPlayercount();
    setstate(ViewState.Idle);
  }

  Future<int> matchcount() async 
  {
    setstate(ViewState.Busy);
    var response = await _matchService.fetchmatchescount();
    setstate(ViewState.Idle);
  }

  Future<int> trainingcount() async
  {
    setstate(ViewState.Busy);
    var response=await _trainingService.fetchtrainingscount();
    setstate(ViewState.Idle);
  }
}
