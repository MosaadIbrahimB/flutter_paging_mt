// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CastState<CastResponse> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CastResponse castResponse) loaded,
    required TResult Function(ApiException error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CastResponse castResponse)? loaded,
    TResult? Function(ApiException error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CastResponse castResponse)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<CastResponse> value) initial,
    required TResult Function(Loading<CastResponse> value) loading,
    required TResult Function(Loaded<CastResponse> value) loaded,
    required TResult Function(Error<CastResponse> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<CastResponse> value)? initial,
    TResult? Function(Loading<CastResponse> value)? loading,
    TResult? Function(Loaded<CastResponse> value)? loaded,
    TResult? Function(Error<CastResponse> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<CastResponse> value)? initial,
    TResult Function(Loading<CastResponse> value)? loading,
    TResult Function(Loaded<CastResponse> value)? loaded,
    TResult Function(Error<CastResponse> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastStateCopyWith<CastResponse, $Res> {
  factory $CastStateCopyWith(CastState<CastResponse> value,
          $Res Function(CastState<CastResponse>) then) =
      _$CastStateCopyWithImpl<CastResponse, $Res, CastState<CastResponse>>;
}

/// @nodoc
class _$CastStateCopyWithImpl<CastResponse, $Res,
        $Val extends CastState<CastResponse>>
    implements $CastStateCopyWith<CastResponse, $Res> {
  _$CastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<CastResponse, $Res> {
  factory _$$InitialImplCopyWith(_$InitialImpl<CastResponse> value,
          $Res Function(_$InitialImpl<CastResponse>) then) =
      __$$InitialImplCopyWithImpl<CastResponse, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<CastResponse, $Res>
    extends _$CastStateCopyWithImpl<CastResponse, $Res,
        _$InitialImpl<CastResponse>>
    implements _$$InitialImplCopyWith<CastResponse, $Res> {
  __$$InitialImplCopyWithImpl(_$InitialImpl<CastResponse> _value,
      $Res Function(_$InitialImpl<CastResponse>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<CastResponse> implements Initial<CastResponse> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CastState<$CastResponse>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl<CastResponse>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CastResponse castResponse) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CastResponse castResponse)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CastResponse castResponse)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<CastResponse> value) initial,
    required TResult Function(Loading<CastResponse> value) loading,
    required TResult Function(Loaded<CastResponse> value) loaded,
    required TResult Function(Error<CastResponse> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<CastResponse> value)? initial,
    TResult? Function(Loading<CastResponse> value)? loading,
    TResult? Function(Loaded<CastResponse> value)? loaded,
    TResult? Function(Error<CastResponse> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<CastResponse> value)? initial,
    TResult Function(Loading<CastResponse> value)? loading,
    TResult Function(Loaded<CastResponse> value)? loaded,
    TResult Function(Error<CastResponse> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<CastResponse> implements CastState<CastResponse> {
  const factory Initial() = _$InitialImpl<CastResponse>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<CastResponse, $Res> {
  factory _$$LoadingImplCopyWith(_$LoadingImpl<CastResponse> value,
          $Res Function(_$LoadingImpl<CastResponse>) then) =
      __$$LoadingImplCopyWithImpl<CastResponse, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<CastResponse, $Res>
    extends _$CastStateCopyWithImpl<CastResponse, $Res,
        _$LoadingImpl<CastResponse>>
    implements _$$LoadingImplCopyWith<CastResponse, $Res> {
  __$$LoadingImplCopyWithImpl(_$LoadingImpl<CastResponse> _value,
      $Res Function(_$LoadingImpl<CastResponse>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<CastResponse> implements Loading<CastResponse> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CastState<$CastResponse>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<CastResponse>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CastResponse castResponse) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CastResponse castResponse)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CastResponse castResponse)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<CastResponse> value) initial,
    required TResult Function(Loading<CastResponse> value) loading,
    required TResult Function(Loaded<CastResponse> value) loaded,
    required TResult Function(Error<CastResponse> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<CastResponse> value)? initial,
    TResult? Function(Loading<CastResponse> value)? loading,
    TResult? Function(Loaded<CastResponse> value)? loaded,
    TResult? Function(Error<CastResponse> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<CastResponse> value)? initial,
    TResult Function(Loading<CastResponse> value)? loading,
    TResult Function(Loaded<CastResponse> value)? loaded,
    TResult Function(Error<CastResponse> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<CastResponse> implements CastState<CastResponse> {
  const factory Loading() = _$LoadingImpl<CastResponse>;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<CastResponse, $Res> {
  factory _$$LoadedImplCopyWith(_$LoadedImpl<CastResponse> value,
          $Res Function(_$LoadedImpl<CastResponse>) then) =
      __$$LoadedImplCopyWithImpl<CastResponse, $Res>;
  @useResult
  $Res call({CastResponse castResponse});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<CastResponse, $Res>
    extends _$CastStateCopyWithImpl<CastResponse, $Res,
        _$LoadedImpl<CastResponse>>
    implements _$$LoadedImplCopyWith<CastResponse, $Res> {
  __$$LoadedImplCopyWithImpl(_$LoadedImpl<CastResponse> _value,
      $Res Function(_$LoadedImpl<CastResponse>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? castResponse = freezed,
  }) {
    return _then(_$LoadedImpl<CastResponse>(
      freezed == castResponse
          ? _value.castResponse
          : castResponse // ignore: cast_nullable_to_non_nullable
              as CastResponse,
    ));
  }
}

/// @nodoc

class _$LoadedImpl<CastResponse> implements Loaded<CastResponse> {
  const _$LoadedImpl(this.castResponse);

  @override
  final CastResponse castResponse;

  @override
  String toString() {
    return 'CastState<$CastResponse>.loaded(castResponse: $castResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl<CastResponse> &&
            const DeepCollectionEquality()
                .equals(other.castResponse, castResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(castResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<CastResponse, _$LoadedImpl<CastResponse>>
      get copyWith =>
          __$$LoadedImplCopyWithImpl<CastResponse, _$LoadedImpl<CastResponse>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CastResponse castResponse) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return loaded(castResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CastResponse castResponse)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return loaded?.call(castResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CastResponse castResponse)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(castResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<CastResponse> value) initial,
    required TResult Function(Loading<CastResponse> value) loading,
    required TResult Function(Loaded<CastResponse> value) loaded,
    required TResult Function(Error<CastResponse> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<CastResponse> value)? initial,
    TResult? Function(Loading<CastResponse> value)? loading,
    TResult? Function(Loaded<CastResponse> value)? loaded,
    TResult? Function(Error<CastResponse> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<CastResponse> value)? initial,
    TResult Function(Loading<CastResponse> value)? loading,
    TResult Function(Loaded<CastResponse> value)? loaded,
    TResult Function(Error<CastResponse> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded<CastResponse> implements CastState<CastResponse> {
  const factory Loaded(final CastResponse castResponse) =
      _$LoadedImpl<CastResponse>;

  CastResponse get castResponse;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<CastResponse, _$LoadedImpl<CastResponse>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<CastResponse, $Res> {
  factory _$$ErrorImplCopyWith(_$ErrorImpl<CastResponse> value,
          $Res Function(_$ErrorImpl<CastResponse>) then) =
      __$$ErrorImplCopyWithImpl<CastResponse, $Res>;
  @useResult
  $Res call({ApiException error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<CastResponse, $Res>
    extends _$CastStateCopyWithImpl<CastResponse, $Res,
        _$ErrorImpl<CastResponse>>
    implements _$$ErrorImplCopyWith<CastResponse, $Res> {
  __$$ErrorImplCopyWithImpl(_$ErrorImpl<CastResponse> _value,
      $Res Function(_$ErrorImpl<CastResponse>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<CastResponse>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiException,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<CastResponse> implements Error<CastResponse> {
  const _$ErrorImpl(this.error);

  @override
  final ApiException error;

  @override
  String toString() {
    return 'CastState<$CastResponse>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<CastResponse> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<CastResponse, _$ErrorImpl<CastResponse>> get copyWith =>
      __$$ErrorImplCopyWithImpl<CastResponse, _$ErrorImpl<CastResponse>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CastResponse castResponse) loaded,
    required TResult Function(ApiException error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CastResponse castResponse)? loaded,
    TResult? Function(ApiException error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CastResponse castResponse)? loaded,
    TResult Function(ApiException error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<CastResponse> value) initial,
    required TResult Function(Loading<CastResponse> value) loading,
    required TResult Function(Loaded<CastResponse> value) loaded,
    required TResult Function(Error<CastResponse> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<CastResponse> value)? initial,
    TResult? Function(Loading<CastResponse> value)? loading,
    TResult? Function(Loaded<CastResponse> value)? loaded,
    TResult? Function(Error<CastResponse> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<CastResponse> value)? initial,
    TResult Function(Loading<CastResponse> value)? loading,
    TResult Function(Loaded<CastResponse> value)? loaded,
    TResult Function(Error<CastResponse> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<CastResponse> implements CastState<CastResponse> {
  const factory Error(final ApiException error) = _$ErrorImpl<CastResponse>;

  ApiException get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<CastResponse, _$ErrorImpl<CastResponse>> get copyWith =>
      throw _privateConstructorUsedError;
}
