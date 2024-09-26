import 'package:json_annotation/json_annotation.dart';

part 'trailer_response.g.dart';

@JsonSerializable()
class TrailerResponse {
  @JsonKey(name: 'results')
  List<Trailer>? trailers;

  TrailerResponse(this.trailers);

  factory TrailerResponse.fromJson(Map<String, dynamic> json) =>
      _$TrailerResponseFromJson(json);
}

@JsonSerializable()
class Trailer {
  final String key;
  final String type;

  Trailer(this.key, this.type);

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}
