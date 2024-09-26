import 'package:json_annotation/json_annotation.dart';
part 'cast_response.g.dart';

@JsonSerializable()
class CastResponse {
  List<Cast> cast = [];

  CastResponse({required this.cast});
  factory CastResponse.fromJson(Map<String, dynamic> json) =>
      _$CastResponseFromJson(json);
}

@JsonSerializable()
class Cast {
  final String name;
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  Cast({required this.name, required this.profilePath});

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
