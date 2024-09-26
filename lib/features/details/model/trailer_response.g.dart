// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrailerResponse _$TrailerResponseFromJson(Map<String, dynamic> json) =>
    TrailerResponse(
      (json['results'] as List<dynamic>?)
          ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrailerResponseToJson(TrailerResponse instance) =>
    <String, dynamic>{
      'results': instance.trailers,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      json['key'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'key': instance.key,
      'type': instance.type,
    };
