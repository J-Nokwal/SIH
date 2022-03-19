// To parse this JSON data, do
//
//     final enterAadaarResponseModel = enterAadaarResponseModelFromJson(jsonString);

import 'dart:convert';

EnterAadaarResponseModel enterAadaarResponseModelFromJson(String str) =>
    EnterAadaarResponseModel.fromJson(json.decode(str));

String enterAadaarResponseModelToJson(EnterAadaarResponseModel data) => json.encode(data.toJson());

class EnterAadaarResponseModel {
  EnterAadaarResponseModel({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  Data data;

  factory EnterAadaarResponseModel.fromJson(Map<String, dynamic> json) => EnterAadaarResponseModel(
        error: json["error"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}
