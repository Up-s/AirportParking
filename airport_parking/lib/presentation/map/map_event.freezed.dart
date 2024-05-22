// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(Airport airport) selectAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(Airport airport)? selectAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(Airport airport)? selectAirport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(SelectAirport value) selectAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(SelectAirport value)? selectAirport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(SelectAirport value)? selectAirport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res, MapEvent>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res, $Val extends MapEvent>
    implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangePageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements ChangePage {
  const _$ChangePageImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MapEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(Airport airport) selectAirport,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(Airport airport)? selectAirport,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(Airport airport)? selectAirport,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(SelectAirport value) selectAirport,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(SelectAirport value)? selectAirport,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(SelectAirport value)? selectAirport,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements MapEvent {
  const factory ChangePage(final int index) = _$ChangePageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAirportImplCopyWith<$Res> {
  factory _$$SelectAirportImplCopyWith(
          _$SelectAirportImpl value, $Res Function(_$SelectAirportImpl) then) =
      __$$SelectAirportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Airport airport});

  $AirportCopyWith<$Res> get airport;
}

/// @nodoc
class __$$SelectAirportImplCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res, _$SelectAirportImpl>
    implements _$$SelectAirportImplCopyWith<$Res> {
  __$$SelectAirportImplCopyWithImpl(
      _$SelectAirportImpl _value, $Res Function(_$SelectAirportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airport = null,
  }) {
    return _then(_$SelectAirportImpl(
      null == airport
          ? _value.airport
          : airport // ignore: cast_nullable_to_non_nullable
              as Airport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AirportCopyWith<$Res> get airport {
    return $AirportCopyWith<$Res>(_value.airport, (value) {
      return _then(_value.copyWith(airport: value));
    });
  }
}

/// @nodoc

class _$SelectAirportImpl implements SelectAirport {
  const _$SelectAirportImpl(this.airport);

  @override
  final Airport airport;

  @override
  String toString() {
    return 'MapEvent.selectAirport(airport: $airport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAirportImpl &&
            (identical(other.airport, airport) || other.airport == airport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, airport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAirportImplCopyWith<_$SelectAirportImpl> get copyWith =>
      __$$SelectAirportImplCopyWithImpl<_$SelectAirportImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(Airport airport) selectAirport,
  }) {
    return selectAirport(airport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(Airport airport)? selectAirport,
  }) {
    return selectAirport?.call(airport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(Airport airport)? selectAirport,
    required TResult orElse(),
  }) {
    if (selectAirport != null) {
      return selectAirport(airport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(SelectAirport value) selectAirport,
  }) {
    return selectAirport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(SelectAirport value)? selectAirport,
  }) {
    return selectAirport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(SelectAirport value)? selectAirport,
    required TResult orElse(),
  }) {
    if (selectAirport != null) {
      return selectAirport(this);
    }
    return orElse();
  }
}

abstract class SelectAirport implements MapEvent {
  const factory SelectAirport(final Airport airport) = _$SelectAirportImpl;

  Airport get airport;
  @JsonKey(ignore: true)
  _$$SelectAirportImplCopyWith<_$SelectAirportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
