// To parse this JSON data, do
//
//     final verifyAadhaarPostModel = verifyAadhaarPostModelFromJson(jsonString);

import 'dart:convert';

VerifyAadhaarPostModel verifyAadhaarPostModelFromJson(String str) => VerifyAadhaarPostModel.fromJson(json.decode(str));

String verifyAadhaarPostModelToJson(VerifyAadhaarPostModel data) => json.encode(data.toJson());

class VerifyAadhaarPostModel {
  VerifyAadhaarPostModel({
    required this.otp,
    required this.username,
    required this.password,
  });

  String otp;
  String username;
  String password;

  factory VerifyAadhaarPostModel.fromJson(Map<String, dynamic> json) => VerifyAadhaarPostModel(
        otp: json["otp"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "otp": otp,
        "username": username,
        "password": password,
      };
}
