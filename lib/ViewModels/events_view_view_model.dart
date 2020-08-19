

import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/models/match_model.dart';
import 'package:coach_better/services/matches_service.dart';
import 'package:coach_better/services/training_service.dart';

class EventsViewModel extends BaseModel {
  MatchService _matchService;
  TrainingService _trainingService;
  Matches match;
  Future getmatch() async {
    setstate(ViewState.Busy);
    match = await _matchService.fetchallmatches();
    setstate(ViewState.Idle);
  }
}
