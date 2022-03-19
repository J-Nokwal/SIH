// To parse this JSON data, do
//
//     final listopportunities = listopportunitiesFromJson(jsonString);

import 'dart:convert';

ListopportunitiesResponse listopportunitiesResponseFromJson(String str) =>
    ListopportunitiesResponse.fromJson(json.decode(str));

String listopportunitiesToJson(ListopportunitiesResponse data) => json.encode(data.toJson());

class ListopportunitiesResponse {
  ListopportunitiesResponse({
    required this.error,
    required this.message,
    required this.data,
  });

  bool error;
  String message;
  List<Datum> data;

  factory ListopportunitiesResponse.fromJson(Map<String, dynamic> json) => ListopportunitiesResponse(
        error: json["error"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.title,
    required this.description,
    required this.applicationDeadline,
    required this.organization,
    required this.type,
    required this.stipened,
    required this.registrationStatus,
    required this.criteriaFilter,
    required this.applicants,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String title;
  String description;
  DateTime applicationDeadline;
  Organization? organization;
  String type;
  int stipened;
  RegistrationStatus? registrationStatus;
  CriteriaFilter criteriaFilter;
  List<dynamic> applicants;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        applicationDeadline: DateTime.parse(json["applicationDeadline"]),
        organization: organizationValues.map[json["organization"]],
        type: json["type"],
        stipened: json["stipened"],
        registrationStatus: registrationStatusValues.map[json["registrationStatus"]],
        criteriaFilter: CriteriaFilter.fromJson(json["criteriaFilter"]),
        applicants: List<dynamic>.from(json["applicants"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "description": description,
        "applicationDeadline": applicationDeadline.toIso8601String(),
        "organization": organizationValues.reverse[organization],
        "type": typeValues.reverse[type],
        "stipened": stipened,
        "registrationStatus": registrationStatusValues.reverse[registrationStatus],
        "criteriaFilter": criteriaFilter.toJson(),
        "applicants": List<dynamic>.from(applicants.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
      };
}

class CriteriaFilter {
  CriteriaFilter({
    required this.gender,
    required this.category,
  });

  Gender? gender;
  Category? category;

  factory CriteriaFilter.fromJson(Map<String, dynamic> json) => CriteriaFilter(
        gender: genderValues.map[json["gender"]],
        category: categoryValues.map[json["category"]],
      );

  Map<String, dynamic> toJson() => {
        "gender": genderValues.reverse[gender],
        "category": categoryValues.reverse[category],
      };
}

enum Category { SC, GEN, OBC }

final categoryValues = EnumValues({"GEN": Category.GEN, "OBC": Category.OBC, "SC": Category.SC});

enum Gender { FEMALE, MALE, GENDER_MALE }

final genderValues = EnumValues({"FEMALE": Gender.FEMALE, "Male": Gender.GENDER_MALE, "MALE": Gender.MALE});

enum Organization { AICTE, NTA }

final organizationValues = EnumValues({"AICTE": Organization.AICTE, "NTA": Organization.NTA});

enum RegistrationStatus { OPEN }

final registrationStatusValues = EnumValues({"Open": RegistrationStatus.OPEN});

enum Type { SCHOLARSHIP, RESEARCH_INTERNSHIP, GOVT_INTERNSHIP }

final typeValues = EnumValues({
  "Govt Internship": Type.GOVT_INTERNSHIP,
  "Research Internship": Type.RESEARCH_INTERNSHIP,
  "Scholarship": Type.SCHOLARSHIP
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
