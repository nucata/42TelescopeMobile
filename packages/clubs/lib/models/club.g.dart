// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
      name: json['name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      profilePic: json['profilePic'] as String,
      description: json['description'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'description': instance.description,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'skills': instance.skills.map((e) => e.toJson()).toList(),
    };
