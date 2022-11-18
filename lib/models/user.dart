import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_app/models/models.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String intraName;
  String id;
  String accessToken;
  String profile;
  String campusId;
  String level;
  List<UserModel> skills;
  List<Clubs> clubs;

  UserModel(
      {required this.skills,
      required this.accessToken,
      required this.campusId,
      required this.clubs,
      required this.id,
      required this.intraName,
      required this.level,
      required this.profile});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
