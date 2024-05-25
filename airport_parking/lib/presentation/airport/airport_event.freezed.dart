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
    required TResult Function(Store store) storeTap,
    required TResult Function(String message) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store store)? storeTap,
    TResult? Function(String message)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store store)? storeTap,
    TResult Function(String message)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTap value) storeTap,
    required TResult Function(ShowAlert value) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTap value)? storeTap,
    TResult? Function(ShowAlert value)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTap value)? storeTap,
    TResult Function(ShowAlert value)? showAlert,
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
abstract class _$$StoreTapImplCopyWith<$Res> {
  factory _$$StoreTapImplCopyWith(
          _$StoreTapImpl value, $Res Function(_$StoreTapImpl) then) =
      __$$StoreTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Store store});

  $StoreCopyWith<$Res> get store;
}

/// @nodoc
class __$$StoreTapImplCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$StoreTapImpl>
    implements _$$StoreTapImplCopyWith<$Res> {
  __$$StoreTapImplCopyWithImpl(
      _$StoreTapImpl _value, $Res Function(_$StoreTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$StoreTapImpl(
      null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoreCopyWith<$Res> get store {
    return $StoreCopyWith<$Res>(_value.store, (value) {
      return _then(_value.copyWith(store: value));
    });
  }
}

/// @nodoc

class _$StoreTapImpl implements StoreTap {
  const _$StoreTapImpl(this.store);

  @override
  final Store store;

  @override
  String toString() {
    return 'AirportEvent.storeTap(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreTapImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreTapImplCopyWith<_$StoreTapImpl> get copyWith =>
      __$$StoreTapImplCopyWithImpl<_$StoreTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store store) storeTap,
    required TResult Function(String message) showAlert,
  }) {
    return storeTap(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store store)? storeTap,
    TResult? Function(String message)? showAlert,
  }) {
    return storeTap?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store store)? storeTap,
    TResult Function(String message)? showAlert,
    required TResult orElse(),
  }) {
    if (storeTap != null) {
      return storeTap(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTap value) storeTap,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return storeTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTap value)? storeTap,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return storeTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTap value)? storeTap,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (storeTap != null) {
      return storeTap(this);
    }
    return orElse();
  }
}

abstract class StoreTap implements AirportEvent {
  const factory StoreTap(final Store store) = _$StoreTapImpl;

  Store get store;
  @JsonKey(ignore: true)
  _$$StoreTapImplCopyWith<_$StoreTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowAlertImplCopyWith<$Res> {
  factory _$$ShowAlertImplCopyWith(
          _$ShowAlertImpl value, $Res Function(_$ShowAlertImpl) then) =
      __$$ShowAlertImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowAlertImplCopyWithImpl<$Res>
    extends _$AirportEventCopyWithImpl<$Res, _$ShowAlertImpl>
    implements _$$ShowAlertImplCopyWith<$Res> {
  __$$ShowAlertImplCopyWithImpl(
      _$ShowAlertImpl _value, $Res Function(_$ShowAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowAlertImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowAlertImpl implements ShowAlert {
  const _$ShowAlertImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AirportEvent.showAlert(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAlertImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      __$$ShowAlertImplCopyWithImpl<_$ShowAlertImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Store store) storeTap,
    required TResult Function(String message) showAlert,
  }) {
    return showAlert(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Store store)? storeTap,
    TResult? Function(String message)? showAlert,
  }) {
    return showAlert?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Store store)? storeTap,
    TResult Function(String message)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreTap value) storeTap,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return showAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreTap value)? storeTap,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return showAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreTap value)? storeTap,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(this);
    }
    return orElse();
  }
}

abstract class ShowAlert implements AirportEvent {
  const factory ShowAlert(final String message) = _$ShowAlertImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
