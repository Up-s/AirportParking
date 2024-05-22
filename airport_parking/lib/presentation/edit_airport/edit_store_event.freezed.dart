// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_store_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditStoreEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowAlert value) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAlert value)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditStoreEventCopyWith<EditStoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditStoreEventCopyWith<$Res> {
  factory $EditStoreEventCopyWith(
          EditStoreEvent value, $Res Function(EditStoreEvent) then) =
      _$EditStoreEventCopyWithImpl<$Res, EditStoreEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$EditStoreEventCopyWithImpl<$Res, $Val extends EditStoreEvent>
    implements $EditStoreEventCopyWith<$Res> {
  _$EditStoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowAlertImplCopyWith<$Res>
    implements $EditStoreEventCopyWith<$Res> {
  factory _$$ShowAlertImplCopyWith(
          _$ShowAlertImpl value, $Res Function(_$ShowAlertImpl) then) =
      __$$ShowAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowAlertImplCopyWithImpl<$Res>
    extends _$EditStoreEventCopyWithImpl<$Res, _$ShowAlertImpl>
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
    return 'EditStoreEvent.showAlert(message: $message)';
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
    required TResult Function(String message) showAlert,
  }) {
    return showAlert(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showAlert,
  }) {
    return showAlert?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return showAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return showAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(this);
    }
    return orElse();
  }
}

abstract class ShowAlert implements EditStoreEvent {
  const factory ShowAlert(final String message) = _$ShowAlertImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
