// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AirportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) apiFetch,
    required TResult Function() apiSuccess,
    required TResult Function(String e) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? apiFetch,
    TResult? Function()? apiSuccess,
    TResult? Function(String e)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? apiFetch,
    TResult Function()? apiSuccess,
    TResult Function(String e)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFetch value) apiFetch,
    required TResult Function(ApiSuccess value) apiSuccess,
    required TResult Function(ApiError value) apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFetch value)? apiFetch,
    TResult? Function(ApiSuccess value)? apiSuccess,
    TResult? Function(ApiError value)? apiError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFetch value)? apiFetch,
    TResult Function(ApiSuccess value)? apiSuccess,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportEventCopyWith<$Res> {
  factory $AirportEventCopyWith(
          AirportEvent value, $Res Function(AirportEvent) then) =
      _$AirportEventCopyWithImpl<$Res, AirportEvent>;
}

/// @nodoc
class _$AirportEventCopyWithImpl<$Res, $Val extends AirportEvent>
    implements $AirportEventCopyWith<$Res> {
  _$AirportEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiFetchImplCopyWith<$Res> {
  factory _$$ApiFetchImplCopyWith(
          _$ApiFetchImpl value, $Res Function(_$ApiFetchImpl) then) =
      __$$ApiFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ApiFetchImplCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$ApiFetchImpl>
    implements _$$ApiFetchImplCopyWith<$Res> {
  __$$ApiFetchImplCopyWithImpl(
      _$ApiFetchImpl _value, $Res Function(_$ApiFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ApiFetchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiFetchImpl implements ApiFetch {
  const _$ApiFetchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AirportEvent.apiFetch(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFetchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiFetchImplCopyWith<_$ApiFetchImpl> get copyWith =>
      __$$ApiFetchImplCopyWithImpl<_$ApiFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) apiFetch,
    required TResult Function() apiSuccess,
    required TResult Function(String e) apiError,
  }) {
    return apiFetch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? apiFetch,
    TResult? Function()? apiSuccess,
    TResult? Function(String e)? apiError,
  }) {
    return apiFetch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? apiFetch,
    TResult Function()? apiSuccess,
    TResult Function(String e)? apiError,
    required TResult orElse(),
  }) {
    if (apiFetch != null) {
      return apiFetch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFetch value) apiFetch,
    required TResult Function(ApiSuccess value) apiSuccess,
    required TResult Function(ApiError value) apiError,
  }) {
    return apiFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFetch value)? apiFetch,
    TResult? Function(ApiSuccess value)? apiSuccess,
    TResult? Function(ApiError value)? apiError,
  }) {
    return apiFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFetch value)? apiFetch,
    TResult Function(ApiSuccess value)? apiSuccess,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiFetch != null) {
      return apiFetch(this);
    }
    return orElse();
  }
}

abstract class ApiFetch implements AirportEvent {
  const factory ApiFetch(final String query) = _$ApiFetchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$ApiFetchImplCopyWith<_$ApiFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiSuccessImplCopyWith<$Res> {
  factory _$$ApiSuccessImplCopyWith(
          _$ApiSuccessImpl value, $Res Function(_$ApiSuccessImpl) then) =
      __$$ApiSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiSuccessImplCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$ApiSuccessImpl>
    implements _$$ApiSuccessImplCopyWith<$Res> {
  __$$ApiSuccessImplCopyWithImpl(
      _$ApiSuccessImpl _value, $Res Function(_$ApiSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApiSuccessImpl implements ApiSuccess {
  const _$ApiSuccessImpl();

  @override
  String toString() {
    return 'AirportEvent.apiSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) apiFetch,
    required TResult Function() apiSuccess,
    required TResult Function(String e) apiError,
  }) {
    return apiSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? apiFetch,
    TResult? Function()? apiSuccess,
    TResult? Function(String e)? apiError,
  }) {
    return apiSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? apiFetch,
    TResult Function()? apiSuccess,
    TResult Function(String e)? apiError,
    required TResult orElse(),
  }) {
    if (apiSuccess != null) {
      return apiSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFetch value) apiFetch,
    required TResult Function(ApiSuccess value) apiSuccess,
    required TResult Function(ApiError value) apiError,
  }) {
    return apiSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFetch value)? apiFetch,
    TResult? Function(ApiSuccess value)? apiSuccess,
    TResult? Function(ApiError value)? apiError,
  }) {
    return apiSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFetch value)? apiFetch,
    TResult Function(ApiSuccess value)? apiSuccess,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiSuccess != null) {
      return apiSuccess(this);
    }
    return orElse();
  }
}

abstract class ApiSuccess implements AirportEvent {
  const factory ApiSuccess() = _$ApiSuccessImpl;
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
          _$ApiErrorImpl value, $Res Function(_$ApiErrorImpl) then) =
      __$$ApiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
      _$ApiErrorImpl _value, $Res Function(_$ApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ApiErrorImpl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiErrorImpl implements ApiError {
  const _$ApiErrorImpl(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'AirportEvent.apiError(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) apiFetch,
    required TResult Function() apiSuccess,
    required TResult Function(String e) apiError,
  }) {
    return apiError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? apiFetch,
    TResult? Function()? apiSuccess,
    TResult? Function(String e)? apiError,
  }) {
    return apiError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? apiFetch,
    TResult Function()? apiSuccess,
    TResult Function(String e)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFetch value) apiFetch,
    required TResult Function(ApiSuccess value) apiSuccess,
    required TResult Function(ApiError value) apiError,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFetch value)? apiFetch,
    TResult? Function(ApiSuccess value)? apiSuccess,
    TResult? Function(ApiError value)? apiError,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFetch value)? apiFetch,
    TResult Function(ApiSuccess value)? apiSuccess,
    TResult Function(ApiError value)? apiError,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class ApiError implements AirportEvent {
  const factory ApiError(final String e) = _$ApiErrorImpl;

  String get e;
  @JsonKey(ignore: true)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
