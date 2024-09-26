import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/api_exception.dart';

part 'cast_state.freezed.dart';

@freezed
class CastState<CastResponse> with _$CastState {
  const factory CastState.initial() = Initial;

  const factory CastState.loading() = Loading;

  const factory CastState.loaded(CastResponse castResponse) =
      Loaded<CastResponse>;

  const factory CastState.error(ApiException error) = Error;
}
