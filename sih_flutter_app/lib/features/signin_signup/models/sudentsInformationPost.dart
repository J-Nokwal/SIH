// To parse this JSON data, do
//
//     final sudentsInformationPost = sudentsInformationPostFromJson(jsonString);

import 'dart:convert';

SudentsInformationGet sudentsInformationGetFromJson(String str) => SudentsInformationGet.fromJson(json.decode(str));

String sudentsInformationPostToJson(SudentsInformationGet data) => json.encode(data.toJson());

class SudentsInformationGet {
  SudentsInformationGet({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  Data data;

  factory SudentsInformationGet.fromJson(Map<String, dynamic> json) => SudentsInformationGet(
        error: json["error"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.gender,
    this.category,
    this.phone,
    this.address,
    this.state,
    this.domicileState,
    this.userRef,
    this.course,
    this.courseType,
    this.startYear,
    this.endYear,
    this.isActive,
    this.currentCgpa,
    this.rollNumber,
    this.totalCredits,
    this.totalCreditsEarned,
    this.currentSemester,
    this.courseStatus,
    required this.starredOpportunities,
    required this.enrolledOpportunities,
    this.isVerified,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.personalEmail,
  });

  String? id;
  Name? name;
  String? gender;
  String? personalEmail;
  String? category;
  dynamic? phone;
  Address? address;
  dynamic? state;
  String? domicileState;
  String? userRef;
  dynamic? course;
  dynamic? courseType;
  dynamic? startYear;
  dynamic? endYear;
  bool? isActive;
  dynamic? currentCgpa;
  dynamic? rollNumber;
  dynamic? totalCredits;
  dynamic? totalCreditsEarned;
  dynamic? currentSemester;
  String? courseStatus;
  List<dynamic>? starredOpportunities;
  List<dynamic>? enrolledOpportunities;
  bool? isVerified;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        gender: json["gender"] == null ? null : json["gender"],
        category: json["category"] == null ? null : json["category"],
        phone: json["phone"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        state: json["state"],
        domicileState: json["domicileState"],
        userRef: json["userRef"],
        personalEmail: json["personalEmail"],
        course: json["course"],
        courseType: json["courseType"],
        startYear: json["startYear"],
        endYear: json["endYear"],
        isActive: json["isActive"],
        currentCgpa: json["currentCGPA"],
        rollNumber: json["rollNumber"],
        totalCredits: json["totalCredits"],
        totalCreditsEarned: json["totalCreditsEarned"],
        currentSemester: json["currentSemester"],
        courseStatus: json["courseStatus"] == null ? null : json["courseStatus"],
        starredOpportunities: json["starredOpportunities"] == null
            ? null
            : (json["starredOpportunities"] as List).isEmpty
                ? null
                : List<dynamic>.from(json["starredOpportunities"].map((x) => x)),
        enrolledOpportunities: json["enrolledOpportunities"] == null
            ? null
            : (json["enrolledOpportunities"] as List).isEmpty
                ? null
                : List<dynamic>.from(json["enrolledOpportunities"].map((x) => x)),
        isVerified: json["isVerified"] == null ? null : json["isVerified"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"] == null ? null : json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "name": name?.toJson(),
        "gender": gender == null ? null : gender,
        "category": category == null ? null : category,
        "phone": phone,
        "address": address?.toJson(),
        "state": state,
        "domicileState": domicileState == null ? null : domicileState,
        "userRef": userRef == null ? null : userRef,
        "course": course,
        "courseType": courseType,
        "startYear": startYear,
        "endYear": endYear,
        "isActive": isActive == null ? null : isActive,
        "currentCGPA": currentCgpa,
        "rollNumber": rollNumber,
        "totalCredits": totalCredits,
        "totalCreditsEarned": totalCreditsEarned,
        "currentSemester": currentSemester,
        "courseStatus": courseStatus == null ? null : courseStatus,
        "starredOpportunities":
            starredOpportunities == null ? null : List<dynamic>.from(starredOpportunities!.map((x) => x)),
        "enrolledOpportunities":
            enrolledOpportunities == null ? null : List<dynamic>.from(enrolledOpportunities!.map((x) => x)),
        "isVerified": isVerified == null ? null : isVerified,
        "__v": v == null ? null : v,
      };
}

class Address {
  Address({
    this.addressLine1,
    this.city,
    this.state,
  });

  String? addressLine1;
  String? city;
  String? state;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressLine1: json["addressLine1"],
        city: json["city"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "addressLine1": addressLine1 == null ? null : addressLine1,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
      };
}

class Name {
  Name({
    this.first,
    this.middle,
    this.last,
  });

  String? first;
  String? middle;
  String? last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        first: json["first"],
        middle: json["middle"],
        last: json["last"],
      );

  Map<String, dynamic> toJson() => {
        "first": first == null ? null : first,
        "middle": middle == null ? null : middle,
        "last": last == null ? null : last,
      };
}
