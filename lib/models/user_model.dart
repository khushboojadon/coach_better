class User {
  String accessToken;
  String tokenType;
  String role;
  int userId;

  User({this.accessToken, this.tokenType, this.role, this.userId});

  User.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    role = json['role'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['role'] = this.role;
    data['user_id'] = this.userId;
    return data;
  }
}