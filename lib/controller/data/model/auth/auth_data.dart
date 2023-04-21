// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

AuthData authDataFromJson(String str) => AuthData.fromJson(json.decode(str));

class AuthData {
  AuthData({
    required this.accessToken,
    required this.user,
  });

  final String accessToken;
  final User user;

  factory AuthData.fromJson(Map<String, dynamic> json) => AuthData(
        accessToken: json["accessToken"],
        user: User.fromJson(json["user"]),
      );
}

class User {
  User({
    required this.email,
    required this.id,
  });

  final String email;
  final String id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        id: json["_id"],
      );
}
