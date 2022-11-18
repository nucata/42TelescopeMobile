import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_app/models/models.dart';

part 'club.g.dart';

@JsonSerializable(explicitToJson: true)
class Clubs {
  String name;
  List<UserModel> users;
  List<Skill> skills;

  Clubs({required this.name, required this.skills, required this.users});

  factory Clubs.fromJson(Map<String, dynamic> json) => _$ClubsFromJson(json);

  Map<String, dynamic> toJson() => _$ClubsToJson(this);
}
