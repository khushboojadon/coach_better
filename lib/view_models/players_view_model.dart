import 'package:coach_better/models/players_model.dart';
import 'package:coach_better/services/playersService.dart';
import 'package:coach_better/view_models/base_model.dart';

class PlayersViewModel extends BaseModel {
  PlayerService _playerService = PlayerService();
  Players player;
  Future getPlayers() async {
    setstate(ViewState.Busy);
    player = await _playerService.fetchallplayers();
    setstate(ViewState.Idle);
  }

  Future<bool> deleteplayer(int playerId) async {
    setstate(ViewState.Busy);
    var success = _playerService.deletePlayer(playerId);
    setstate(ViewState.Idle);
    return success;
  }
}
