class Training {
  int id;
  int teamId;
  int seasonId;
  String date;
  String status;
  String type;
  String location;
  int userId;
  String deletedAt;

  Training(
      {this.id,
      this.teamId,
      this.seasonId,
      this.date,
      this.status,
      this.type,
      this.location,
      this.userId,
      this.deletedAt});

  Training.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    teamId = json['team_id'];
    seasonId = json['season_id'];
    date = json['date'];
    status = json['status'];
    type = json['type'];
    location = json['location'];
    userId = json['user_id'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['team_id'] = this.teamId;
    data['season_id'] = this.seasonId;
    data['date'] = this.date;
    data['status'] = this.status;
    data['type'] = this.type;
    data['location'] = this.location;
    data['user_id'] = this.userId;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
