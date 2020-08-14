class MatchModel {
  int id;
  int teamId;
  int seasonId;
  String date;
  String status;
  String location;
  String opponent;
  String notes;
  var rating;
  int lineupId;
  int goalsScored;
  int goalsReceived;
  String deletedAt;
  int home;
  int userId;

  MatchModel(
      {this.id,
      this.teamId,
      this.seasonId,
      this.date,
      this.status,
      this.location,
      this.opponent,
      this.notes,
      this.rating,
      this.lineupId,
      this.goalsScored,
      this.goalsReceived,
      this.deletedAt,
      this.home,
      this.userId});

  MatchModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    teamId = json['team_id'];
    seasonId = json['season_id'];
    date = json['date'];
    status = json['status'];
    location = json['location'];
    opponent = json['opponent'];
    notes = json['notes'];
    rating = json['rating'];
    lineupId = json['lineup_id'];
    goalsScored = json['goals_scored'];
    goalsReceived = json['goals_received'];
    deletedAt = json['deleted_at'];
    home = json['home'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['team_id'] = this.teamId;
    data['season_id'] = this.seasonId;
    data['date'] = this.date;
    data['status'] = this.status;
    data['location'] = this.location;
    data['opponent'] = this.opponent;
    data['notes'] = this.notes;
    data['rating'] = this.rating;
    data['lineup_id'] = this.lineupId;
    data['goals_scored'] = this.goalsScored;
    data['goals_received'] = this.goalsReceived;
    data['deleted_at'] = this.deletedAt;
    data['home'] = this.home;
    data['user_id'] = this.userId;
    return data;
  }
}
