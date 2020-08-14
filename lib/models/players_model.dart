// class Player {
//   int id;
//   int teamId;
//   Null userId;
//   String position;
//   String subPosition;
//   String firstName;
//   String lastName;
//   String birthday;
//   String email1;
//   String email2;
//   int phone;
//   String foot;
//   int captain;
//   int number;
//   String gender;
//   String tag;
//   String strengths;
//   String weaknesses;
//   String developmentTracking;
//   int pace;
//   int shoot;
//   int dribbling;
//   int passing;
//   int defending;
//   int physique;

//   Player(
//       {this.id,
//       this.teamId,
//       this.userId,
//       this.position,
//       this.subPosition,
//       this.firstName,
//       this.lastName,
//       this.birthday,
//       this.email1,
//       this.email2,
//       this.phone,
//       this.foot,
//       this.captain,
//       this.number,
//       this.gender,
//       this.tag,
//       this.strengths,
//       this.weaknesses,
//       this.developmentTracking,
//       this.pace,
//       this.shoot,
//       this.dribbling,
//       this.passing,
//       this.defending,
//       this.physique});

//   Player.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     teamId = json['team_id'];
//     userId = json['user_id'];
//     position = json['position'];
//     subPosition = json['sub_position'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     birthday = json['birthday'];
//     email1 = json['email_1'];
//     email2 = json['email_2'];
//     phone = json['phone'];
//     foot = json['foot'];
//     captain = json['captain'];
//     number = json['number'];
//     gender = json['gender'];
//     tag = json['tag'];
//     strengths = json['strengths'];
//     weaknesses = json['weaknesses'];
//     developmentTracking = json['development_tracking'];
//     pace = json['pace'];
//     shoot = json['shoot'];
//     dribbling = json['dribbling'];
//     passing = json['passing'];
//     defending = json['defending'];
//     physique = json['physique'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['team_id'] = this.teamId;
//     data['user_id'] = this.userId;
//     data['position'] = this.position;
//     data['sub_position'] = this.subPosition;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['birthday'] = this.birthday;
//     data['email_1'] = this.email1;
//     data['email_2'] = this.email2;
//     data['phone'] = this.phone;
//     data['foot'] = this.foot;
//     data['captain'] = this.captain;
//     data['number'] = this.number;
//     data['gender'] = this.gender;
//     data['tag'] = this.tag;
//     data['strengths'] = this.strengths;
//     data['weaknesses'] = this.weaknesses;
//     data['development_tracking'] = this.developmentTracking;
//     data['pace'] = this.pace;
//     data['shoot'] = this.shoot;
//     data['dribbling'] = this.dribbling;
//     data['passing'] = this.passing;
//     data['defending'] = this.defending;
//     data['physique'] = this.physique;
//     return data;
//   }
// }

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



