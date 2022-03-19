// To parse this JSON data, do
//
//     final signInModel = signInModelFromJson(jsonString);

import 'dart:convert';

String signInModelToJson(SignInPostModel data) => json.encode(data.toJson());

class SignInPostModel {
  SignInPostModel({
    required this.username,
    required this.password,
  });

  String username;
  String password;

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };
}
