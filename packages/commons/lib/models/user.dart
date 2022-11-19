import 'package:clubs/clubs.dart';
import 'package:json_annotation/json_annotation.dart';

import 'skill.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String intraName;
  String id;
  String accessToken;
  String profilePic;
  String campusId;
  String level;
  List<Skill> skills;
  List<Club> clubs;

  UserModel(
      {required this.skills,
      required this.accessToken,
      required this.campusId,
      required this.clubs,
      required this.id,
      required this.intraName,
      required this.level,
      required this.profilePic});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
