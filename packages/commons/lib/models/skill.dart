import 'package:json_annotation/json_annotation.dart';

part 'skill.g.dart';

@JsonSerializable(explicitToJson: true)
class Skill {
  String id;
  String name;
  String rate;

  Skill({required this.id, required this.name, required this.rate});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
