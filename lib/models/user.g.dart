// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
      follow: json['follow'] as int? ?? 0,
      follower: json['follower'] as int? ?? 0,
      followTag: json['follow_tag'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'follow': instance.follow,
      'follower': instance.follower,
      'follow_tag': instance.followTag,
    };
