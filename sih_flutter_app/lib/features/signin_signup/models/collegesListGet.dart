// To parse this JSON data, do
//
//     final collegesListGet = collegesListGetFromJson(jsonString);

import 'dart:convert';

CollegesListGetResponse collegesListGetFromJson(String str) => CollegesListGetResponse.fromJson(json.decode(str));

class CollegesListGetResponse {
  CollegesListGetResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  List<Datum> data;

  factory CollegesListGetResponse.fromJson(Map<String, dynamic> json) => CollegesListGetResponse(
        error: json["error"] == null ? null : json["error"],
        message: json["message"] == null ? null : json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum({
    this.id,
    this.instituteName,
    this.instituteCode,
    this.nirf,
    this.instituteType,
    this.institueWebsite,
    this.institueAdminEmail,
    this.instituteAdminRef,
    this.state,
    this.coursesOffered,
    this.opportunities,
    this.v,
  });

  String? id;
  String? instituteName;
  String? instituteCode;
  int? nirf;
  String? instituteType;
  String? institueWebsite;
  String? institueAdminEmail;
  dynamic? instituteAdminRef;
  String? state;
  List<String>? coursesOffered;
  List<dynamic>? opportunities;
  int? v;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"] == null ? null : json["_id"],
        instituteName: json["instituteName"] == null ? null : json["instituteName"],
        instituteCode: json["instituteCode"] == null ? null : json["instituteCode"],
        nirf: json["nirf"] == null ? null : json["nirf"],
        instituteType: json["instituteType"] == null ? null : json["instituteType"],
        institueWebsite: json["institueWebsite"] == null ? null : json["institueWebsite"],
        institueAdminEmail: json["institueAdminEmail"] == null ? null : json["institueAdminEmail"],
        instituteAdminRef: json["instituteAdminRef"],
        state: json["state"] == null ? null : json["state"],
        coursesOffered: json["coursesOffered"] == null ? null : List<String>.from(json["coursesOffered"].map((x) => x)),
        opportunities: json["opportunities"] == null ? null : List<dynamic>.from(json["opportunities"].map((x) => x)),
        v: json["__v"] == null ? null : json["__v"],
      );
}
