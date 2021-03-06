import 'dart:convert';

Teams teamsFromJson(Map<String,dynamic> str) => Teams.fromJson(str);

String teamsToJson(Teams data) => json.encode(data.toJson());

class Teams {
  Teams({
    this.data,
  });

  List<Datum> data;

  factory Teams.fromJson(Map<String, dynamic> json) => Teams(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.clubId,
    this.ageClass,
    this.phone,
    this.email,
    this.address1,
    this.address2,
    this.city,
    this.country,
    this.league,
    this.gender,
    this.documentsRootId,
    this.sharedArticlesFolderId,
    this.sharedDrillsFolderId,
    this.sharedMatchesFolderId,
    this.sharedTrainingsFolderId,
    this.sharedPlayersFolderId,
    this.hideGlobalDrills,
    this.hideGlobalTrainingPackages,
    this.userId,
    this.hideGlobalArticle,
    this.role,
    this.subscriptionId,
    this.endsAt,
    this.trialEndsAt,
    this.plan,
    this.paid,
    this.imgUrl,
    this.seasons,
  });

  int id;
  String name;
  int clubId;
  AgeClass ageClass;
  String phone;
  String email;
  String address1;
  String address2;
  String city;
  Country country;
  String league;
  Gender gender;
  int documentsRootId;
  int sharedArticlesFolderId;
  int sharedDrillsFolderId;
  int sharedMatchesFolderId;
  int sharedTrainingsFolderId;
  int sharedPlayersFolderId;
  int hideGlobalDrills;
  int hideGlobalTrainingPackages;
  dynamic userId;
  int hideGlobalArticle;
  Role role;
  int subscriptionId;
  DateTime endsAt;
  int trialEndsAt;
  String plan;
  int paid;
  ImgUrl imgUrl;
  List<Season> seasons;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        clubId: json["club_id"],
        ageClass: ageClassValues.map[json["age_class"]],
        phone: json["phone"] == null ? null : json["phone"],
        email: json["email"] == null ? null : json["email"],
        address1: json["address_1"] == null ? null : json["address_1"],
        address2: json["address_2"] == null ? null : json["address_2"],
        city: json["city"] == null ? null : json["city"],
        country: countryValues.map[json["country"]],
        league: json["league"],
        gender: genderValues.map[json["gender"]],
        documentsRootId: json["documents_root_id"],
        sharedArticlesFolderId: json["shared_articles_folder_id"] == null
            ? null
            : json["shared_articles_folder_id"],
        sharedDrillsFolderId: json["shared_drills_folder_id"] == null
            ? null
            : json["shared_drills_folder_id"],
        sharedMatchesFolderId: json["shared_matches_folder_id"] == null
            ? null
            : json["shared_matches_folder_id"],
        sharedTrainingsFolderId: json["shared_trainings_folder_id"] == null
            ? null
            : json["shared_trainings_folder_id"],
        sharedPlayersFolderId: json["shared_players_folder_id"] == null
            ? null
            : json["shared_players_folder_id"],
        hideGlobalDrills: json["hide_global_drills"],
        hideGlobalTrainingPackages: json["hide_global_training_packages"],
        userId: json["user_id"],
        hideGlobalArticle: json["hide_global_article"],
        role: roleValues.map[json["role"]],
        subscriptionId:
            json["subscription_id"] == null ? null : json["subscription_id"],
        endsAt: json["endsAt"] == null ? null : DateTime.parse(json["endsAt"]),
        trialEndsAt: json["trialEndsAt"] == null ? null : json["trialEndsAt"],
        plan: json["plan"] == null ? null : json["plan"],
        paid: json["paid"] == null ? null : json["paid"],
        imgUrl: json["imgUrl"] == null ? null : ImgUrl.fromJson(json["imgUrl"]),
        seasons:
            List<Season>.from(json["seasons"].map((x) => Season.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "club_id": clubId,
        "age_class": ageClassValues.reverse[ageClass],
        "phone": phone == null ? null : phone,
        "email": email == null ? null : email,
        "address_1": address1 == null ? null : address1,
        "address_2": address2 == null ? null : address2,
        "city": city == null ? null : city,
        "country": countryValues.reverse[country],
        "league": league,
        "gender": genderValues.reverse[gender],
        "documents_root_id": documentsRootId,
        "shared_articles_folder_id":
            sharedArticlesFolderId == null ? null : sharedArticlesFolderId,
        "shared_drills_folder_id":
            sharedDrillsFolderId == null ? null : sharedDrillsFolderId,
        "shared_matches_folder_id":
            sharedMatchesFolderId == null ? null : sharedMatchesFolderId,
        "shared_trainings_folder_id":
            sharedTrainingsFolderId == null ? null : sharedTrainingsFolderId,
        "shared_players_folder_id":
            sharedPlayersFolderId == null ? null : sharedPlayersFolderId,
        "hide_global_drills": hideGlobalDrills,
        "hide_global_training_packages": hideGlobalTrainingPackages,
        "user_id": userId,
        "hide_global_article": hideGlobalArticle,
        "role": roleValues.reverse[role],
        "subscription_id": subscriptionId == null ? null : subscriptionId,
        "endsAt": endsAt == null ? null : endsAt.toIso8601String(),
        "trialEndsAt": trialEndsAt == null ? null : trialEndsAt,
        "plan": plan == null ? null : plan,
        "paid": paid == null ? null : paid,
        "imgUrl": imgUrl == null ? null : imgUrl.toJson(),
        "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
      };
}

enum AgeClass { U17_ADULTS, U11_U16, U6_U10 }

final ageClassValues = EnumValues({
  "u11-u16": AgeClass.U11_U16,
  "u17-adults": AgeClass.U17_ADULTS,
  "u6-u10": AgeClass.U6_U10
});

enum Country { CH, US, FSD }

final countryValues =
    EnumValues({"CH": Country.CH, "fsd": Country.FSD, "US": Country.US});

enum Gender { M, F }

final genderValues = EnumValues({"f": Gender.F, "m": Gender.M});

class ImgUrl {
  ImgUrl({
    this.fileName,
    this.id,
  });

  String fileName;
  int id;

  factory ImgUrl.fromJson(Map<String, dynamic> json) => ImgUrl(
        fileName: json["file_name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "file_name": fileName,
        "id": id,
      };
}

enum Role { TEAM_COACH }

final roleValues = EnumValues({"team_coach": Role.TEAM_COACH});

class Season {
  Season({
    this.id,
    this.teamId,
    this.startDate,
    this.endDate,
    this.userId,
  });

  int id;
  int teamId;
  DateTime startDate;
  DateTime endDate;
  dynamic userId;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        id: json["id"],
        teamId: json["team_id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "team_id": teamId,
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "user_id": userId,
      };
}

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
