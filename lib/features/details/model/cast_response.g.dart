// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastResponse _$CastResponseFromJson(Map<String, dynamic> json) => CastResponse(
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CastResponseToJson(CastResponse instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };

Cast _$CastFromJson(Map<String, dynamic> json) => Cast(
      name: json['name'] as String,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
