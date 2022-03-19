// To parse this JSON data, do
//
//     final collegesSetPost = collegesSetPostFromJson(jsonString);

import 'dart:convert';

CollegesSetPost collegesSetPostFromJson(String str) => CollegesSetPost.fromJson(json.decode(str));

String collegesSetPostToJson(CollegesSetPost data) => json.encode(data.toJson());

class CollegesSetPost {
  CollegesSetPost({
    required this.universityId,
    required this.rollNumber,
  });

  String universityId;
  String rollNumber;

  factory CollegesSetPost.fromJson(Map<String, dynamic> json) => CollegesSetPost(
        universityId: json["universityId"],
        rollNumber: json["rollNumber"],
      );

  Map<String, dynamic> toJson() => {
        "universityId": universityId,
        "rollNumber": rollNumber,
      };
}
