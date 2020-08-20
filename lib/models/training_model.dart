// class Training {
//   int id;
//   int teamId;
//   int seasonId;
//   String date;
//   String status;
//   String type;
//   String location;
//   int userId;
//   String deletedAt;

//   Training(
//       {this.id,
//       this.teamId,
//       this.seasonId,
//       this.date,
//       this.status,
//       this.type,
//       this.location,
//       this.userId,
//       this.deletedAt});

//   Training.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     teamId = json['team_id'];
//     seasonId = json['season_id'];
//     date = json['date'];
//     status = json['status'];
//     type = json['type'];
//     location = json['location'];
//     userId = json['user_id'];
//     deletedAt = json['deleted_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['team_id'] = this.teamId;
//     data['season_id'] = this.seasonId;
//     data['date'] = this.date;
//     data['status'] = this.status;
//     data['type'] = this.type;
//     data['location'] = this.location;
//     data['user_id'] = this.userId;
//     data['deleted_at'] = this.deletedAt;
//     return data;
//   }
// }

import 'dart:convert';

Training trainingFromJson(Map<String, dynamic> str) => Training.fromJson(str);

String trainingToJson(Training data) => json.encode(data.toJson());

class Training {
  Training({
    this.data,
  });

  List<Datum> data;

  factory Training.fromJson(Map<String, dynamic> json) => Training(
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
    this.type,
    this.location,
    this.userId,
    this.deletedAt,
  });

  int id;
  int teamId;
  int seasonId;
  DateTime date;
  Status status;
  Type type;
  Location location;
  int userId;
  dynamic deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        teamId: json["team_id"],
        seasonId: json["season_id"],
        date: DateTime.parse(json["date"]),
        status: statusValues.map[json["status"]],
        type: typeValues.map[json["type"]],
        location: json["location"] == null
            ? null
            : locationValues.map[json["location"]],
        userId: json["user_id"] == null ? null : json["user_id"],
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "season_id": seasonId,
        "date": date.toIso8601String(),
        "status": statusValues.reverse[status],
        "type": typeValues.reverse[type],
        "location": location == null ? null : locationValues.reverse[location],
        "user_id": userId == null ? null : userId,
        "deleted_at": deletedAt,
      };
}

enum Location { WERD, LARISSA, TEST, SCHLIEREN, DENVER_CAMPUS }

final locationValues = EnumValues({
  "Denver Campus": Location.DENVER_CAMPUS,
  "Larissa": Location.LARISSA,
  "schlieren": Location.SCHLIEREN,
  "test": Location.TEST,
  "Werd": Location.WERD
});

enum Status { PUBLISHED, DRAFT }

final statusValues =
    EnumValues({"draft": Status.DRAFT, "published": Status.PUBLISHED});

enum Type { ALL }

final typeValues = EnumValues({"all": Type.ALL});

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
