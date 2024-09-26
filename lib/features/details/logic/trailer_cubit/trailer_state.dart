import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/api_exception.dart';
part 'trailer_state.freezed.dart';

@freezed
class TrailerState<TrailerResponse> with _$TrailerState {
  const factory TrailerState.initial() = Initial;

  const factory TrailerState.loading() = Loading;

  const factory TrailerState.loaded(TrailerResponse trailerResponse) =
      Loaded<TrailerResponse>;

  const factory TrailerState.error(ApiException error) = Error;
}
