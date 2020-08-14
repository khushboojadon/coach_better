// class Video {
//   int id;
//   String title;
//   int processed;
//   int completed;
//   Null notes;
//   Null trainingId;
//   Null matchId;
//   int teamId;
//   int seasonId;
//   Null errorDetails;
//   Null userId;
//   String videoUrl;
//   String thumbnailUrl;
//   Null connectedEvent;

//   Video(
//       {this.id,
//       this.title,
//       this.processed,
//       this.completed,
//       this.notes,
//       this.trainingId,
//       this.matchId,
//       this.teamId,
//       this.seasonId,
//       this.errorDetails,
//       this.userId,
//       this.videoUrl,
//       this.thumbnailUrl,
//       this.connectedEvent});

//   Video.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     processed = json['processed'];
//     completed = json['completed'];
//     notes = json['notes'];
//     trainingId = json['training_id'];
//     matchId = json['match_id'];
//     teamId = json['team_id'];
//     seasonId = json['season_id'];
//     errorDetails = json['error_details'];
//     userId = json['user_id'];
//     videoUrl = json['video_url'];
//     thumbnailUrl = json['thumbnail_url'];
//     connectedEvent = json['connected_event'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['processed'] = this.processed;
//     data['completed'] = this.completed;
//     data['notes'] = this.notes;
//     data['training_id'] = this.trainingId;
//     data['match_id'] = this.matchId;
//     data['team_id'] = this.teamId;
//     data['season_id'] = this.seasonId;
//     data['error_details'] = this.errorDetails;
//     data['user_id'] = this.userId;
//     data['video_url'] = this.videoUrl;
//     data['thumbnail_url'] = this.thumbnailUrl;
//     data['connected_event'] = this.connectedEvent;
//     return data;
//   }
// }



import 'dart:convert';

Videos videosFromJson(Map<String,dynamic> str) => Videos.fromJson(str);

String videosToJson(Videos data) => json.encode(data.toJson());

class Videos {
    Videos({
        this.data,
    });

    List<Datum> data;

    factory Videos.fromJson(Map<String, dynamic> json) => Videos(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.title,
        this.processed,
        this.completed,
        this.notes,
        this.trainingId,
        this.matchId,
        this.teamId,
        this.seasonId,
        this.errorDetails,
        this.userId,
        this.videoUrl,
        this.thumbnailUrl,
        this.connectedEvent,
    });

    int id;
    String title;
    int processed;
    int completed;
    dynamic notes;
    dynamic trainingId;
    dynamic matchId;
    int teamId;
    int seasonId;
    dynamic errorDetails;
    dynamic userId;
    String videoUrl;
    String thumbnailUrl;
    dynamic connectedEvent;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        processed: json["processed"],
        completed: json["completed"],
        notes: json["notes"],
        trainingId: json["training_id"],
        matchId: json["match_id"],
        teamId: json["team_id"],
        seasonId: json["season_id"],
        errorDetails: json["error_details"],
        userId: json["user_id"],
        videoUrl: json["video_url"],
        thumbnailUrl: json["thumbnail_url"],
        connectedEvent: json["connected_event"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "processed": processed,
        "completed": completed,
        "notes": notes,
        "training_id": trainingId,
        "match_id": matchId,
        "team_id": teamId,
        "season_id": seasonId,
        "error_details": errorDetails,
        "user_id": userId,
        "video_url": videoUrl,
        "thumbnail_url": thumbnailUrl,
        "connected_event": connectedEvent,
    };
}
