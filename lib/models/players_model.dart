import 'dart:convert';

Players playersFromJson(Map<String, dynamic> str) => Players.fromJson(str);

String playersToJson(Players data) => json.encode(data.toJson());

class Players {
  Players({
    this.data,
  });

  List<Datum> data;

  factory Players.fromJson(Map<String, dynamic> json) => Players(
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
    this.userId,
    this.position,
    this.subPosition,
    this.firstName,
    this.lastName,
    this.birthday,
    this.email1,
    this.email2,
    this.phone,
    this.foot,
    this.captain,
    this.number,
    this.gender,
    this.tag,
    this.strengths,
    this.weaknesses,
    this.developmentTracking,
    this.pace,
    this.shoot,
    this.dribbling,
    this.passing,
    this.defending,
    this.physique,
  });

  int id;
  int teamId;
  dynamic userId;
  dynamic position;
  dynamic subPosition;
  String firstName;
  String lastName;
  dynamic birthday;
  dynamic email1;
  dynamic email2;
  dynamic phone;
  dynamic foot;
  int captain;
  int number;
  dynamic gender;
  dynamic tag;
  dynamic strengths;
  dynamic weaknesses;
  dynamic developmentTracking;
  int pace;
  int shoot;
  int dribbling;
  int passing;
  int defending;
  int physique;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        teamId: json["team_id"],
        userId: json["user_id"],
        position: json["position"],
        subPosition: json["sub_position"],
        firstName: json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        birthday: json["birthday"],
        email1: json["email_1"],
        email2: json["email_2"],
        phone: json["phone"],
        foot: json["foot"],
        captain: json["captain"],
        number: json["number"],
        gender: json["gender"],
        tag: json["tag"],
        strengths: json["strengths"],
        weaknesses: json["weaknesses"],
        developmentTracking: json["development_tracking"],
        pace: json["pace"],
        shoot: json["shoot"],
        dribbling: json["dribbling"],
        passing: json["passing"],
        defending: json["defending"],
        physique: json["physique"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "user_id": userId,
        "position": position,
        "sub_position": subPosition,
        "first_name": firstName,
        "last_name": lastName == null ? null : lastName,
        "birthday": birthday,
        "email_1": email1,
        "email_2": email2,
        "phone": phone,
        "foot": foot,
        "captain": captain,
        "number": number,
        "gender": gender,
        "tag": tag,
        "strengths": strengths,
        "weaknesses": weaknesses,
        "development_tracking": developmentTracking,
        "pace": pace,
        "shoot": shoot,
        "dribbling": dribbling,
        "passing": passing,
        "defending": defending,
        "physique": physique,
      };
}



