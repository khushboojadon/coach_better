import 'dart:collection';

import 'package:coach_better/ViewModels/base_model.dart';
import 'package:coach_better/models/players_model.dart';
import 'package:coach_better/services/playersService.dart';

class PlayersViewModel extends BaseModel {
  PlayerService _playerService = PlayerService();
  List<String> _tags = [
    'available',
    'not_available',
    'no_response',
    'injured',
    'yellow_red_card',
    'red_card'
  ];
  List<String> _gender = [
    'male',
    'female',
  ];
  List<String> _foot = ['left', 'right'];
  List<String> _position = ['goalkeeper', 'defender', 'midfield', 'striker'];
  List<String> _subposition = [
    'Goalkeeper - GK',
    'Defender - LB',
    'Midfielder - RW',
    'LW',
    'DM',
    'CM',
    'AM',
    'Stricker - ST'
  ];
  String _selectedTag;

  UnmodifiableListView<String> get tags {
    return UnmodifiableListView(this._tags);
  }

  String get selectedTag {
    return this._selectedTag;
  }

  set selected(final String tag) {
    this._selectedTag = tag;
    this.notifyListeners();
  }

  String _selectedGender;

  UnmodifiableListView<String> get gender {
    return UnmodifiableListView(this._gender);
  }

  String get selectedgender {
    return this._selectedGender;
  }

  set selectedgender(final String gender) {
    this._selectedGender = gender;
    this.notifyListeners();
  }

  String _selectedFoot;

  UnmodifiableListView<String> get foot {
    return UnmodifiableListView(this._foot);
  }

  String get selectedfoot {
    return this._selectedFoot;
  }

  set selectedfoot(final String foot) {
    this._selectedFoot = foot;
    this.notifyListeners();
  }

  String _selectedPosition;

  UnmodifiableListView<String> get position {
    return UnmodifiableListView(this._position);
  }

  String get selectedposition {
    return this._selectedPosition;
  }

  set selectedposition(final String position) {
    this._selectedPosition = position;
    this.notifyListeners();
  }

  String _selectedSubPosition;

  UnmodifiableListView<String> get subposition {
    return UnmodifiableListView(this._subposition);
  }

  String get selectedSubPosition {
    return this._selectedSubPosition;
  }

  set selectedSubPosition(final String subposition) {
    this._selectedSubPosition = subposition;
    this.notifyListeners();
  }

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

  Future<bool> addPlayer(
      String position,
      String subposition,
      String firstname,
      String lastname,
      String foot,
      int number,
      String gender,
      String tag) async {
    setstate(ViewState.Busy);
    var success = _playerService.addplayer(
        position, subposition, firstname, lastname, foot, number, gender, tag);
    setstate(ViewState.Idle);
    return success;
  }
}
