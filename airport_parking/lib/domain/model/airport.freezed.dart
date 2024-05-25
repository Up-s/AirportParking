// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Airport _$AirportFromJson(Map<String, dynamic> json) {
  return _Airport.fromJson(json);
}

/// @nodoc
mixin _$Airport {
  String get en => throw _privateConstructorUsedError;
  String get ko => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  String get mapPath => throw _privateConstructorUsedError;
  String get airportPath => throw _privateConstructorUsedError;
  double get opacity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirportCopyWith<Airport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirportCopyWith<$Res> {
  factory $AirportCopyWith(Airport value, $Res Function(Airport) then) =
      _$AirportCopyWithImpl<$Res, Airport>;
  @useResult
  $Res call(
      {String en,
      String ko,
      String homepage,
      String mapPath,
      String airportPath,
      double opacity});
}

/// @nodoc
class _$AirportCopyWithImpl<$Res, $Val extends Airport>
    implements $AirportCopyWith<$Res> {
  _$AirportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ko = null,
    Object? homepage = null,
    Object? mapPath = null,
    Object? airportPath = null,
    Object? opacity = null,
  }) {
    return _then(_value.copyWith(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ko: null == ko
          ? _value.ko
          : ko // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      mapPath: null == mapPath
          ? _value.mapPath
          : mapPath // ignore: cast_nullable_to_non_nullable
              as String,
      airportPath: null == airportPath
          ? _value.airportPath
          : airportPath // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirportImplCopyWith<$Res> implements $AirportCopyWith<$Res> {
  factory _$$AirportImplCopyWith(
          _$AirportImpl value, $Res Function(_$AirportImpl) then) =
      __$$AirportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String en,
      String ko,
      String homepage,
      String mapPath,
      String airportPath,
      double opacity});
}

/// @nodoc
class __$$AirportImplCopyWithImpl<$Res>
    extends _$AirportCopyWithImpl<$Res, _$AirportImpl>
    implements _$$AirportImplCopyWith<$Res> {
  __$$AirportImplCopyWithImpl(
      _$AirportImpl _value, $Res Function(_$AirportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? ko = null,
    Object? homepage = null,
    Object? mapPath = null,
    Object? airportPath = null,
    Object? opacity = null,
  }) {
    return _then(_$AirportImpl(
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      ko: null == ko
          ? _value.ko
          : ko // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: null == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      mapPath: null == mapPath
          ? _value.mapPath
          : mapPath // ignore: cast_nullable_to_non_nullable
              as String,
      airportPath: null == airportPath
          ? _value.airportPath
          : airportPath // ignore: cast_nullable_to_non_nullable
              as String,
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirportImpl implements _Airport {
  _$AirportImpl(
      {required this.en,
      required this.ko,
      required this.homepage,
      required this.mapPath,
      required this.airportPath,
      required this.opacity});

  factory _$AirportImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirportImplFromJson(json);

  @override
  final String en;
  @override
  final String ko;
  @override
  final String homepage;
  @override
  final String mapPath;
  @override
  final String airportPath;
  @override
  final double opacity;

  @override
  String toString() {
    return 'Airport(en: $en, ko: $ko, homepage: $homepage, mapPath: $mapPath, airportPath: $airportPath, opacity: $opacity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirportImpl &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ko, ko) || other.ko == ko) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.mapPath, mapPath) || other.mapPath == mapPath) &&
            (identical(other.airportPath, airportPath) ||
                other.airportPath == airportPath) &&
            (identical(other.opacity, opacity) || other.opacity == opacity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, en, ko, homepage, mapPath, airportPath, opacity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirportImplCopyWith<_$AirportImpl> get copyWith =>
      __$$AirportImplCopyWithImpl<_$AirportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirportImplToJson(
      this,
    );
  }
}

abstract class _Airport implements Airport {
  factory _Airport(
      {required final String en,
      required final String ko,
      required final String homepage,
      required final String mapPath,
      required final String airportPath,
      required final double opacity}) = _$AirportImpl;

  factory _Airport.fromJson(Map<String, dynamic> json) = _$AirportImpl.fromJson;

  @override
  String get en;
  @override
  String get ko;
  @override
  String get homepage;
  @override
  String get mapPath;
  @override
  String get airportPath;
  @override
  double get opacity;
  @override
  @JsonKey(ignore: true)
  _$$AirportImplCopyWith<_$AirportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
