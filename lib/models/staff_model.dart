// class Staff {
//   List<Data> data;

//   Staff({this.data});

//   Staff.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = new List<Data>();
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int id;
//   int teamId;
//   String position;
//   String firstName;
//   String lastName;
//   String birthday;
//   String email;
//   String phone;
//   String gender;
//   int userId;

//   Data(
//       {this.id,
//       this.teamId,
//       this.position,
//       this.firstName,
//       this.lastName,
//       this.birthday,
//       this.email,
//       this.phone,
//       this.gender,
//       this.userId});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     teamId = json['team_id'];
//     position = json['position'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     birthday = json['birthday'];
//     email = json['email'];
//     phone = json['phone'];
//     gender = json['gender'];
//     userId = json['user_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['team_id'] = this.teamId;
//     data['position'] = this.position;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['birthday'] = this.birthday;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['gender'] = this.gender;
//     data['user_id'] = this.userId;
//     return data;
//   }
// }




import 'dart:convert';

Staff staffFromJson(Map<String,dynamic> str) => Staff.fromJson(str);

String staffToJson(Staff data) => json.encode(data.toJson());

class Staff {
    Staff({
        this.data,
    });

    List<Datum> data;

    factory Staff.fromJson(Map<String, dynamic> json) => Staff(
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
        this.position,
        this.firstName,
        this.lastName,
        this.birthday,
        this.email,
        this.phone,
        this.gender,
        this.userId,
    });

    int id;
    int teamId;
    String position;
    String firstName;
    String lastName;
    DateTime birthday;
    String email;
    String phone;
    String gender;
    dynamic userId;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        teamId: json["team_id"],
        position: json["position"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        birthday: json["birthday"] == null ? null : DateTime.parse(json["birthday"]),
        email: json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        gender: json["gender"],
        userId: json["user_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "position": position,
        "first_name": firstName,
        "last_name": lastName,
        "birthday": birthday == null ? null : birthday.toIso8601String(),
        "email": email,
        "phone": phone == null ? null : phone,
        "gender": gender,
        "user_id": userId,
    };
}
// class Staff {
//   List<Data> data;

//   Staff({this.data});

//   Staff.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = new List<Data>();
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int id;
//   int teamId;
//   String position;
//   String firstName;
//   String lastName;
//   String birthday;
//   String email;
//   String phone;
//   String gender;
//   Null userId;

//   Data(
//       {this.id,
//       this.teamId,
//       this.position,
//       this.firstName,
//       this.lastName,
//       this.birthday,
//       this.email,
//       this.phone,
//       this.gender,
//       this.userId});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     teamId = json['team_id'];
//     position = json['position'];
//     firstName = json['first_name'];
//     lastName = json['last_name'];
//     birthday = json['birthday'];
//     email = json['email'];
//     phone = json['phone'];
//     gender = json['gender'];
//     userId = json['user_id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['team_id'] = this.teamId;
//     data['position'] = this.position;
//     data['first_name'] = this.firstName;
//     data['last_name'] = this.lastName;
//     data['birthday'] = this.birthday;
//     data['email'] = this.email;
//     data['phone'] = this.phone;
//     data['gender'] = this.gender;
//     data['user_id'] = this.userId;
//     return data;
//   }
// }
