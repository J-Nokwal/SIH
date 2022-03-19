// To parse this JSON data, do
//
//     final collegesSetResponse = collegesSetResponseFromJson(jsonString);

import 'dart:convert';

CollegesSetResponse collegesSetResponseFromJson(String str) => CollegesSetResponse.fromJson(json.decode(str));

String collegesSetResponseToJson(CollegesSetResponse data) => json.encode(data.toJson());

class CollegesSetResponse {
  CollegesSetResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  Data data;

  factory CollegesSetResponse.fromJson(Map<String, dynamic> json) => CollegesSetResponse(
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
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
      };
}
