import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/models/match_model.dart';
import 'package:coach_better/models/training_model.dart';
import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/training_service.dart';

class EventsViewModel extends BaseModel {
  MatchService _matchService;
  TrainingService _trainingService;
  Matches match;
  Training training;
  Future getmatches() async {
    setstate(ViewState.Busy);
    match = await _matchService.fetchallmatches();
    setstate(ViewState.Idle);
  }
    Future gettrainings() async {
    setstate(ViewState.Busy);
    training = await _trainingService.fetchalltrainings();
    setstate(ViewState.Idle);
  }
}
