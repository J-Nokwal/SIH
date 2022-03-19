// To parse this JSON data, do
//
//     final verifyAadhaarResponseModel = verifyAadhaarResponseModelFromJson(jsonString);

import 'dart:convert';

VerifyAadhaarResponseModel verifyAadhaarResponseModelFromJson(String str) =>
    VerifyAadhaarResponseModel.fromJson(json.decode(str));

String verifyAadhaarResponseModelToJson(VerifyAadhaarResponseModel data) => json.encode(data.toJson());

class VerifyAadhaarResponseModel {
  VerifyAadhaarResponseModel({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  Data data;

  factory VerifyAadhaarResponseModel.fromJson(Map<String, dynamic> json) => VerifyAadhaarResponseModel(
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
  Data({
    required this.accessToken,
  });

  String accessToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
      };
}
