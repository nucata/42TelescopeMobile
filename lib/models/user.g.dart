// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      skills: (json['skills'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      accessToken: json['accessToken'] as String,
      campusId: json['campusId'] as String,
      clubs: json['clubs'] as List<Clubs>,
      id: json['id'] as String,
      intraName: json['intraName'] as String,
      level: json['level'] as String,
      profile: json['profile'] as String,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'intraName': instance.intraName,
      'id': instance.id,
      'accessToken': instance.accessToken,
      'profile': instance.profile,
      'campusId': instance.campusId,
      'level': instance.level,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'clubs': instance.clubs,
    };
