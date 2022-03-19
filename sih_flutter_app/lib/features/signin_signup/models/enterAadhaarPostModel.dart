// To parse this JSON data, do
//
//     final enterAadaarPostModel = enterAadaarPostModelFromJson(jsonString);

import 'dart:convert';

EnterAadaarPostModel enterAadaarPostModelFromJson(String str) => EnterAadaarPostModel.fromJson(json.decode(str));

String enterAadaarPostModelToJson(EnterAadaarPostModel data) => json.encode(data.toJson());

class EnterAadaarPostModel {
  EnterAadaarPostModel({
    required this.aadhaarNumber,
  });

  String aadhaarNumber;

  factory EnterAadaarPostModel.fromJson(Map<String, dynamic> json) => EnterAadaarPostModel(
        aadhaarNumber: json["aadhaarNumber"],
      );

  Map<String, dynamic> toJson() => {
        "aadhaarNumber": aadhaarNumber,
      };
}
