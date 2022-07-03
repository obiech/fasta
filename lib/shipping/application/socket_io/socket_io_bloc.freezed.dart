// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'socket_io_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocketIoEventTearOff {
  const _$SocketIoEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SocketIoEvent = _$SocketIoEventTearOff();

/// @nodoc
mixin _$SocketIoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIoEventCopyWith<$Res> {
  factory $SocketIoEventCopyWith(
          SocketIoEvent value, $Res Function(SocketIoEvent) then) =
      _$SocketIoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketIoEventCopyWithImpl<$Res>
    implements $SocketIoEventCopyWith<$Res> {
  _$SocketIoEventCopyWithImpl(this._value, this._then);

  final SocketIoEvent _value;
  // ignore: unused_field
  final $Res Function(SocketIoEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SocketIoEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SocketIoEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SocketIoEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SocketIoStateTearOff {
  const _$SocketIoStateTearOff();

  _SocketIoState call(
      {DeliveryInvitation? invitation, DeliverySummary? delivery}) {
    return _SocketIoState(
      invitation: invitation,
      delivery: delivery,
    );
  }
}

/// @nodoc
const $SocketIoState = _$SocketIoStateTearOff();

/// @nodoc
mixin _$SocketIoState {
  DeliveryInvitation? get invitation => throw _privateConstructorUsedError;
  DeliverySummary? get delivery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketIoStateCopyWith<SocketIoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIoStateCopyWith<$Res> {
  factory $SocketIoStateCopyWith(
          SocketIoState value, $Res Function(SocketIoState) then) =
      _$SocketIoStateCopyWithImpl<$Res>;
  $Res call({DeliveryInvitation? invitation, DeliverySummary? delivery});
}

/// @nodoc
class _$SocketIoStateCopyWithImpl<$Res>
    implements $SocketIoStateCopyWith<$Res> {
  _$SocketIoStateCopyWithImpl(this._value, this._then);

  final SocketIoState _value;
  // ignore: unused_field
  final $Res Function(SocketIoState) _then;

  @override
  $Res call({
    Object? invitation = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_value.copyWith(
      invitation: invitation == freezed
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliverySummary?,
    ));
  }
}

/// @nodoc
abstract class _$SocketIoStateCopyWith<$Res>
    implements $SocketIoStateCopyWith<$Res> {
  factory _$SocketIoStateCopyWith(
          _SocketIoState value, $Res Function(_SocketIoState) then) =
      __$SocketIoStateCopyWithImpl<$Res>;
  @override
  $Res call({DeliveryInvitation? invitation, DeliverySummary? delivery});
}

/// @nodoc
class __$SocketIoStateCopyWithImpl<$Res>
    extends _$SocketIoStateCopyWithImpl<$Res>
    implements _$SocketIoStateCopyWith<$Res> {
  __$SocketIoStateCopyWithImpl(
      _SocketIoState _value, $Res Function(_SocketIoState) _then)
      : super(_value, (v) => _then(v as _SocketIoState));

  @override
  _SocketIoState get _value => super._value as _SocketIoState;

  @override
  $Res call({
    Object? invitation = freezed,
    Object? delivery = freezed,
  }) {
    return _then(_SocketIoState(
      invitation: invitation == freezed
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliverySummary?,
    ));
  }
}

/// @nodoc

class _$_SocketIoState implements _SocketIoState {
  _$_SocketIoState({this.invitation, this.delivery});

  @override
  final DeliveryInvitation? invitation;
  @override
  final DeliverySummary? delivery;

  @override
  String toString() {
    return 'SocketIoState(invitation: $invitation, delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketIoState &&
            const DeepCollectionEquality()
                .equals(other.invitation, invitation) &&
            const DeepCollectionEquality().equals(other.delivery, delivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(invitation),
      const DeepCollectionEquality().hash(delivery));

  @JsonKey(ignore: true)
  @override
  _$SocketIoStateCopyWith<_SocketIoState> get copyWith =>
      __$SocketIoStateCopyWithImpl<_SocketIoState>(this, _$identity);
}

abstract class _SocketIoState implements SocketIoState {
  factory _SocketIoState(
      {DeliveryInvitation? invitation,
      DeliverySummary? delivery}) = _$_SocketIoState;

  @override
  DeliveryInvitation? get invitation;
  @override
  DeliverySummary? get delivery;
  @override
  @JsonKey(ignore: true)
  _$SocketIoStateCopyWith<_SocketIoState> get copyWith =>
      throw _privateConstructorUsedError;
}
