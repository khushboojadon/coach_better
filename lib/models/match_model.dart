import 'dart:convert';

Matches matchesFromJson(Map<String, dynamic> str) => Matches.fromJson(str);

String matchesToJson(Matches data) => json.encode(data.toJson());

class Matches {
    Matches({
        this.data,
    });

    List<Datum> data;

    factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
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
        this.userId,
    });

    int id;
    int teamId;
    int seasonId;
    DateTime date;
    Status status;
    String location;
    String opponent;
    String notes;
    double rating;
    int lineupId;
    int goalsScored;
    int goalsReceived;
    dynamic deletedAt;
    int home;
    int userId;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        teamId: json["team_id"],
        seasonId: json["season_id"],
        date: DateTime.parse(json["date"]),
        status: statusValues.map[json["status"]],
        location: json["location"] == null ? null : json["location"],
        opponent: json["opponent"] == null ? null : json["opponent"],
        notes: json["notes"] == null ? null : json["notes"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        lineupId: json["lineup_id"] == null ? null : json["lineup_id"],
        goalsScored: json["goals_scored"],
        goalsReceived: json["goals_received"],
        deletedAt: json["deleted_at"],
        home: json["home"],
        userId: json["user_id"] == null ? null : json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "season_id": seasonId,
        "date": date.toIso8601String(),
        "status": statusValues.reverse[status],
        "location": location == null ? null : location,
        "opponent": opponent == null ? null : opponent,
        "notes": notes == null ? null : notes,
        "rating": rating == null ? null : rating,
        "lineup_id": lineupId == null ? null : lineupId,
        "goals_scored": goalsScored,
        "goals_received": goalsReceived,
        "deleted_at": deletedAt,
        "home": home,
        "user_id": userId == null ? null : userId,
    };
}

enum Status { PUBLISHED, DRAFT }

final statusValues = EnumValues({
    "draft": Status.DRAFT,
    "published": Status.PUBLISHED
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
