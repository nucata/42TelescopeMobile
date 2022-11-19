import 'package:commons/commons.dart';
import 'package:json_annotation/json_annotation.dart';

part 'club.g.dart';

@JsonSerializable(explicitToJson: true)
class Club {
  String id;
  String name;
  String profilePic;
  String description;
  List<UserModel> users;
  List<Skill> skills;

  Club(
      {required this.name,
      required this.skills,
      required this.profilePic,
      required this.description,
      required this.users,
      required this.id});

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);
}
