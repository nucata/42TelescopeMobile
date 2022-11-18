// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clubs _$ClubsFromJson(Map<String, dynamic> json) => Clubs(
      name: json['name'] as String,
      skills: json['skills'] as List<Skill>,
      users: json['users'] as List<UserModel>,
    );

Map<String, dynamic> _$ClubsToJson(Clubs instance) => <String, dynamic>{
      'name': instance.name,
      'users': instance.users,
      'skills': instance.skills,
    };
