import 'dart:convert';

List<Data> dataFromJson(String str) => List<Data>.from(json.decode(str).map((x) => Data.fromJson(x)));

String dataToJson(List<Data> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Data {
    Data({
        this.id,
        this.teamId,
        this.seasonId,
        this.date,
        this.startTime,
        this.endTime,
        this.meetTime,
        this.status,
        this.available,
        this.notAvailable,
        this.location,
        this.opponent,
        this.type,
        this.notes,
        this.rating,
        this.lineupId,
        this.goalsScored,
        this.goalsReceived,
        this.deletedAt,
        this.home,
        this.userId,
    });

    int id;
    int teamId;
    int seasonId;
    String date;
    String startTime;
    String endTime;
    String meetTime;
    String status;
    int available;
    int notAvailable;
    String location;
    String opponent;
    String type;
    dynamic notes;
    double rating;
    int lineupId;
    int goalsScored;
    int goalsReceived;
    dynamic deletedAt;
    int home;
    dynamic userId;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        teamId: json["team_id"],
        seasonId: json["season_id"],
        date: json["date"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        meetTime: json["meet_time"],
        status: json["status"],
        available: json["available"],
        notAvailable: json["not_available"],
        location: json["location"],
        opponent: json["opponent"],
        type: json["type"],
        notes: json["notes"],
        rating: json["rating"].toDouble(),
        lineupId: json["lineup_id"],
        goalsScored: json["goals_scored"],
        goalsReceived: json["goals_received"],
        deletedAt: json["deleted_at"],
        home: json["home"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "season_id": seasonId,
        "date": date,
        "start_time": startTime,
        "end_time": endTime,
        "meet_time": meetTime,
        "status": status,
        "available": available,
        "not_available": notAvailable,
        "location": location,
        "opponent": opponent,
        "type": type,
        "notes": notes,
        "rating": rating,
        "lineup_id": lineupId,
        "goals_scored": goalsScored,
        "goals_received": goalsReceived,
        "deleted_at": deletedAt,
        "home": home,
        "user_id": userId,
    };
}
