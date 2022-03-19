// To parse this JSON data, do
//
//     final signInResponseModel = signInResponseModelFromJson(jsonString);

import 'dart:convert';

SignInResponseModel signInResponseModelFromJson(String str) => SignInResponseModel.fromJson(json.decode(str));

class SignInResponseModel {
  SignInResponseModel({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  Data data;

  factory SignInResponseModel.fromJson(Map<String, dynamic> json) => SignInResponseModel(
        error: json["error"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();
}
