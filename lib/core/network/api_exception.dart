import 'package:json_annotation/json_annotation.dart';
part 'api_exception.g.dart';

@JsonSerializable()
class ApiException {
  @JsonKey(name: 'status_message')
  final String message;
  @JsonKey(name: 'status_code')
  final int code;

  ApiException({required this.message, required this.code});

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
}
