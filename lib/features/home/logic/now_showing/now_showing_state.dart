import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/api_exception.dart';

part 'now_showing_state.freezed.dart';

@freezed
class NowShowingState<T> with _$NowShowingState {
  factory NowShowingState.initial() = Initial;

  factory NowShowingState.loading() = Loading;

  factory NowShowingState.success(T data) = Success<T>;

  factory NowShowingState.error(ApiException e) = Error;
}
