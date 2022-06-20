// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipment_handler_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShipmentHandlerEventTearOff {
  const _$ShipmentHandlerEventTearOff();

  _Started started() {
    return const _Started();
  }

  _CreateShipment createShipment({required CreateShipmentArg arg}) {
    return _CreateShipment(
      arg: arg,
    );
  }

  _CreateTrip createTrip({required CreateTripArg arg}) {
    return _CreateTrip(
      arg: arg,
    );
  }

  _GetAllDeliveries getAllDeliveries({required String email}) {
    return _GetAllDeliveries(
      email: email,
    );
  }

  _GetAllShipment getAllShipment({required String email}) {
    return _GetAllShipment(
      email: email,
    );
  }

  _UpdateTripStatus updateTripStatus(
      {required String id, required String status}) {
    return _UpdateTripStatus(
      id: id,
      status: status,
    );
  }

  _AcceptCompletedDelivery acceptCompletedDelivery(String deliveryId) {
    return _AcceptCompletedDelivery(
      deliveryId,
    );
  }

  _RateDelivery rateDelivery(RateDeliveryArg arg) {
    return _RateDelivery(
      arg,
    );
  }

  _TipDelivery tipDelivery(String deliveryId, String amount) {
    return _TipDelivery(
      deliveryId,
      amount,
    );
  }
}

/// @nodoc
const $ShipmentHandlerEvent = _$ShipmentHandlerEventTearOff();

/// @nodoc
mixin _$ShipmentHandlerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentHandlerEventCopyWith<$Res> {
  factory $ShipmentHandlerEventCopyWith(ShipmentHandlerEvent value,
          $Res Function(ShipmentHandlerEvent) then) =
      _$ShipmentHandlerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements $ShipmentHandlerEventCopyWith<$Res> {
  _$ShipmentHandlerEventCopyWithImpl(this._value, this._then);

  final ShipmentHandlerEvent _value;
  // ignore: unused_field
  final $Res Function(ShipmentHandlerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
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
    return 'ShipmentHandlerEvent.started()';
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
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
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
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ShipmentHandlerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CreateShipmentCopyWith<$Res> {
  factory _$CreateShipmentCopyWith(
          _CreateShipment value, $Res Function(_CreateShipment) then) =
      __$CreateShipmentCopyWithImpl<$Res>;
  $Res call({CreateShipmentArg arg});
}

/// @nodoc
class __$CreateShipmentCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$CreateShipmentCopyWith<$Res> {
  __$CreateShipmentCopyWithImpl(
      _CreateShipment _value, $Res Function(_CreateShipment) _then)
      : super(_value, (v) => _then(v as _CreateShipment));

  @override
  _CreateShipment get _value => super._value as _CreateShipment;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_CreateShipment(
      arg: arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as CreateShipmentArg,
    ));
  }
}

/// @nodoc

class _$_CreateShipment implements _CreateShipment {
  const _$_CreateShipment({required this.arg});

  @override
  final CreateShipmentArg arg;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.createShipment(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateShipment &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$CreateShipmentCopyWith<_CreateShipment> get copyWith =>
      __$CreateShipmentCopyWithImpl<_CreateShipment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return createShipment(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return createShipment?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (createShipment != null) {
      return createShipment(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return createShipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return createShipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (createShipment != null) {
      return createShipment(this);
    }
    return orElse();
  }
}

abstract class _CreateShipment implements ShipmentHandlerEvent {
  const factory _CreateShipment({required CreateShipmentArg arg}) =
      _$_CreateShipment;

  CreateShipmentArg get arg;
  @JsonKey(ignore: true)
  _$CreateShipmentCopyWith<_CreateShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateTripCopyWith<$Res> {
  factory _$CreateTripCopyWith(
          _CreateTrip value, $Res Function(_CreateTrip) then) =
      __$CreateTripCopyWithImpl<$Res>;
  $Res call({CreateTripArg arg});
}

/// @nodoc
class __$CreateTripCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$CreateTripCopyWith<$Res> {
  __$CreateTripCopyWithImpl(
      _CreateTrip _value, $Res Function(_CreateTrip) _then)
      : super(_value, (v) => _then(v as _CreateTrip));

  @override
  _CreateTrip get _value => super._value as _CreateTrip;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_CreateTrip(
      arg: arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as CreateTripArg,
    ));
  }
}

/// @nodoc

class _$_CreateTrip implements _CreateTrip {
  const _$_CreateTrip({required this.arg});

  @override
  final CreateTripArg arg;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.createTrip(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateTrip &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$CreateTripCopyWith<_CreateTrip> get copyWith =>
      __$CreateTripCopyWithImpl<_CreateTrip>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return createTrip(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return createTrip?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (createTrip != null) {
      return createTrip(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return createTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return createTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (createTrip != null) {
      return createTrip(this);
    }
    return orElse();
  }
}

abstract class _CreateTrip implements ShipmentHandlerEvent {
  const factory _CreateTrip({required CreateTripArg arg}) = _$_CreateTrip;

  CreateTripArg get arg;
  @JsonKey(ignore: true)
  _$CreateTripCopyWith<_CreateTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllDeliveriesCopyWith<$Res> {
  factory _$GetAllDeliveriesCopyWith(
          _GetAllDeliveries value, $Res Function(_GetAllDeliveries) then) =
      __$GetAllDeliveriesCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$GetAllDeliveriesCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetAllDeliveriesCopyWith<$Res> {
  __$GetAllDeliveriesCopyWithImpl(
      _GetAllDeliveries _value, $Res Function(_GetAllDeliveries) _then)
      : super(_value, (v) => _then(v as _GetAllDeliveries));

  @override
  _GetAllDeliveries get _value => super._value as _GetAllDeliveries;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_GetAllDeliveries(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllDeliveries implements _GetAllDeliveries {
  const _$_GetAllDeliveries({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getAllDeliveries(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllDeliveries &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$GetAllDeliveriesCopyWith<_GetAllDeliveries> get copyWith =>
      __$GetAllDeliveriesCopyWithImpl<_GetAllDeliveries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return getAllDeliveries(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return getAllDeliveries?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (getAllDeliveries != null) {
      return getAllDeliveries(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return getAllDeliveries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return getAllDeliveries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (getAllDeliveries != null) {
      return getAllDeliveries(this);
    }
    return orElse();
  }
}

abstract class _GetAllDeliveries implements ShipmentHandlerEvent {
  const factory _GetAllDeliveries({required String email}) =
      _$_GetAllDeliveries;

  String get email;
  @JsonKey(ignore: true)
  _$GetAllDeliveriesCopyWith<_GetAllDeliveries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetAllShipmentCopyWith<$Res> {
  factory _$GetAllShipmentCopyWith(
          _GetAllShipment value, $Res Function(_GetAllShipment) then) =
      __$GetAllShipmentCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$GetAllShipmentCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetAllShipmentCopyWith<$Res> {
  __$GetAllShipmentCopyWithImpl(
      _GetAllShipment _value, $Res Function(_GetAllShipment) _then)
      : super(_value, (v) => _then(v as _GetAllShipment));

  @override
  _GetAllShipment get _value => super._value as _GetAllShipment;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_GetAllShipment(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAllShipment implements _GetAllShipment {
  const _$_GetAllShipment({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getAllShipment(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllShipment &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$GetAllShipmentCopyWith<_GetAllShipment> get copyWith =>
      __$GetAllShipmentCopyWithImpl<_GetAllShipment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return getAllShipment(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return getAllShipment?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (getAllShipment != null) {
      return getAllShipment(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return getAllShipment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return getAllShipment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (getAllShipment != null) {
      return getAllShipment(this);
    }
    return orElse();
  }
}

abstract class _GetAllShipment implements ShipmentHandlerEvent {
  const factory _GetAllShipment({required String email}) = _$_GetAllShipment;

  String get email;
  @JsonKey(ignore: true)
  _$GetAllShipmentCopyWith<_GetAllShipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTripStatusCopyWith<$Res> {
  factory _$UpdateTripStatusCopyWith(
          _UpdateTripStatus value, $Res Function(_UpdateTripStatus) then) =
      __$UpdateTripStatusCopyWithImpl<$Res>;
  $Res call({String id, String status});
}

/// @nodoc
class __$UpdateTripStatusCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$UpdateTripStatusCopyWith<$Res> {
  __$UpdateTripStatusCopyWithImpl(
      _UpdateTripStatus _value, $Res Function(_UpdateTripStatus) _then)
      : super(_value, (v) => _then(v as _UpdateTripStatus));

  @override
  _UpdateTripStatus get _value => super._value as _UpdateTripStatus;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_UpdateTripStatus(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateTripStatus implements _UpdateTripStatus {
  const _$_UpdateTripStatus({required this.id, required this.status});

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.updateTripStatus(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTripStatus &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$UpdateTripStatusCopyWith<_UpdateTripStatus> get copyWith =>
      __$UpdateTripStatusCopyWithImpl<_UpdateTripStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return updateTripStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return updateTripStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (updateTripStatus != null) {
      return updateTripStatus(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return updateTripStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return updateTripStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (updateTripStatus != null) {
      return updateTripStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateTripStatus implements ShipmentHandlerEvent {
  const factory _UpdateTripStatus(
      {required String id, required String status}) = _$_UpdateTripStatus;

  String get id;
  String get status;
  @JsonKey(ignore: true)
  _$UpdateTripStatusCopyWith<_UpdateTripStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptCompletedDeliveryCopyWith<$Res> {
  factory _$AcceptCompletedDeliveryCopyWith(_AcceptCompletedDelivery value,
          $Res Function(_AcceptCompletedDelivery) then) =
      __$AcceptCompletedDeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId});
}

/// @nodoc
class __$AcceptCompletedDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$AcceptCompletedDeliveryCopyWith<$Res> {
  __$AcceptCompletedDeliveryCopyWithImpl(_AcceptCompletedDelivery _value,
      $Res Function(_AcceptCompletedDelivery) _then)
      : super(_value, (v) => _then(v as _AcceptCompletedDelivery));

  @override
  _AcceptCompletedDelivery get _value =>
      super._value as _AcceptCompletedDelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
  }) {
    return _then(_AcceptCompletedDelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AcceptCompletedDelivery implements _AcceptCompletedDelivery {
  const _$_AcceptCompletedDelivery(this.deliveryId);

  @override
  final String deliveryId;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.acceptCompletedDelivery(deliveryId: $deliveryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcceptCompletedDelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deliveryId));

  @JsonKey(ignore: true)
  @override
  _$AcceptCompletedDeliveryCopyWith<_AcceptCompletedDelivery> get copyWith =>
      __$AcceptCompletedDeliveryCopyWithImpl<_AcceptCompletedDelivery>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return acceptCompletedDelivery(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return acceptCompletedDelivery?.call(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (acceptCompletedDelivery != null) {
      return acceptCompletedDelivery(deliveryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return acceptCompletedDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return acceptCompletedDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (acceptCompletedDelivery != null) {
      return acceptCompletedDelivery(this);
    }
    return orElse();
  }
}

abstract class _AcceptCompletedDelivery implements ShipmentHandlerEvent {
  const factory _AcceptCompletedDelivery(String deliveryId) =
      _$_AcceptCompletedDelivery;

  String get deliveryId;
  @JsonKey(ignore: true)
  _$AcceptCompletedDeliveryCopyWith<_AcceptCompletedDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RateDeliveryCopyWith<$Res> {
  factory _$RateDeliveryCopyWith(
          _RateDelivery value, $Res Function(_RateDelivery) then) =
      __$RateDeliveryCopyWithImpl<$Res>;
  $Res call({RateDeliveryArg arg});
}

/// @nodoc
class __$RateDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$RateDeliveryCopyWith<$Res> {
  __$RateDeliveryCopyWithImpl(
      _RateDelivery _value, $Res Function(_RateDelivery) _then)
      : super(_value, (v) => _then(v as _RateDelivery));

  @override
  _RateDelivery get _value => super._value as _RateDelivery;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_RateDelivery(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as RateDeliveryArg,
    ));
  }
}

/// @nodoc

class _$_RateDelivery implements _RateDelivery {
  const _$_RateDelivery(this.arg);

  @override
  final RateDeliveryArg arg;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.rateDelivery(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RateDelivery &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$RateDeliveryCopyWith<_RateDelivery> get copyWith =>
      __$RateDeliveryCopyWithImpl<_RateDelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return rateDelivery(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return rateDelivery?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (rateDelivery != null) {
      return rateDelivery(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return rateDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return rateDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (rateDelivery != null) {
      return rateDelivery(this);
    }
    return orElse();
  }
}

abstract class _RateDelivery implements ShipmentHandlerEvent {
  const factory _RateDelivery(RateDeliveryArg arg) = _$_RateDelivery;

  RateDeliveryArg get arg;
  @JsonKey(ignore: true)
  _$RateDeliveryCopyWith<_RateDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TipDeliveryCopyWith<$Res> {
  factory _$TipDeliveryCopyWith(
          _TipDelivery value, $Res Function(_TipDelivery) then) =
      __$TipDeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId, String amount});
}

/// @nodoc
class __$TipDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$TipDeliveryCopyWith<$Res> {
  __$TipDeliveryCopyWithImpl(
      _TipDelivery _value, $Res Function(_TipDelivery) _then)
      : super(_value, (v) => _then(v as _TipDelivery));

  @override
  _TipDelivery get _value => super._value as _TipDelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TipDelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TipDelivery implements _TipDelivery {
  const _$_TipDelivery(this.deliveryId, this.amount);

  @override
  final String deliveryId;
  @override
  final String amount;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.tipDelivery(deliveryId: $deliveryId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TipDelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deliveryId),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$TipDeliveryCopyWith<_TipDelivery> get copyWith =>
      __$TipDeliveryCopyWithImpl<_TipDelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function(String email) getAllDeliveries,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
  }) {
    return tipDelivery(deliveryId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
  }) {
    return tipDelivery?.call(deliveryId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function(String email)? getAllDeliveries,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    required TResult orElse(),
  }) {
    if (tipDelivery != null) {
      return tipDelivery(deliveryId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
  }) {
    return tipDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
  }) {
    return tipDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    required TResult orElse(),
  }) {
    if (tipDelivery != null) {
      return tipDelivery(this);
    }
    return orElse();
  }
}

abstract class _TipDelivery implements ShipmentHandlerEvent {
  const factory _TipDelivery(String deliveryId, String amount) = _$_TipDelivery;

  String get deliveryId;
  String get amount;
  @JsonKey(ignore: true)
  _$TipDeliveryCopyWith<_TipDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShipmentHandlerStateTearOff {
  const _$ShipmentHandlerStateTearOff();

  _ShipmentHandlerState call(
      {required String errorMessage,
      required AppState status,
      LocationPointArg? address,
      List<Trip>? allDelivery}) {
    return _ShipmentHandlerState(
      errorMessage: errorMessage,
      status: status,
      address: address,
      allDelivery: allDelivery,
    );
  }
}

/// @nodoc
const $ShipmentHandlerState = _$ShipmentHandlerStateTearOff();

/// @nodoc
mixin _$ShipmentHandlerState {
  String get errorMessage => throw _privateConstructorUsedError;
  AppState get status => throw _privateConstructorUsedError;
  LocationPointArg? get address => throw _privateConstructorUsedError;
  List<Trip>? get allDelivery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipmentHandlerStateCopyWith<ShipmentHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentHandlerStateCopyWith<$Res> {
  factory $ShipmentHandlerStateCopyWith(ShipmentHandlerState value,
          $Res Function(ShipmentHandlerState) then) =
      _$ShipmentHandlerStateCopyWithImpl<$Res>;
  $Res call(
      {String errorMessage,
      AppState status,
      LocationPointArg? address,
      List<Trip>? allDelivery});
}

/// @nodoc
class _$ShipmentHandlerStateCopyWithImpl<$Res>
    implements $ShipmentHandlerStateCopyWith<$Res> {
  _$ShipmentHandlerStateCopyWithImpl(this._value, this._then);

  final ShipmentHandlerState _value;
  // ignore: unused_field
  final $Res Function(ShipmentHandlerState) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? allDelivery = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationPointArg?,
      allDelivery: allDelivery == freezed
          ? _value.allDelivery
          : allDelivery // ignore: cast_nullable_to_non_nullable
              as List<Trip>?,
    ));
  }
}

/// @nodoc
abstract class _$ShipmentHandlerStateCopyWith<$Res>
    implements $ShipmentHandlerStateCopyWith<$Res> {
  factory _$ShipmentHandlerStateCopyWith(_ShipmentHandlerState value,
          $Res Function(_ShipmentHandlerState) then) =
      __$ShipmentHandlerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String errorMessage,
      AppState status,
      LocationPointArg? address,
      List<Trip>? allDelivery});
}

/// @nodoc
class __$ShipmentHandlerStateCopyWithImpl<$Res>
    extends _$ShipmentHandlerStateCopyWithImpl<$Res>
    implements _$ShipmentHandlerStateCopyWith<$Res> {
  __$ShipmentHandlerStateCopyWithImpl(
      _ShipmentHandlerState _value, $Res Function(_ShipmentHandlerState) _then)
      : super(_value, (v) => _then(v as _ShipmentHandlerState));

  @override
  _ShipmentHandlerState get _value => super._value as _ShipmentHandlerState;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? allDelivery = freezed,
  }) {
    return _then(_ShipmentHandlerState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppState,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationPointArg?,
      allDelivery: allDelivery == freezed
          ? _value.allDelivery
          : allDelivery // ignore: cast_nullable_to_non_nullable
              as List<Trip>?,
    ));
  }
}

/// @nodoc

class _$_ShipmentHandlerState implements _ShipmentHandlerState {
  _$_ShipmentHandlerState(
      {required this.errorMessage,
      required this.status,
      this.address,
      this.allDelivery});

  @override
  final String errorMessage;
  @override
  final AppState status;
  @override
  final LocationPointArg? address;
  @override
  final List<Trip>? allDelivery;

  @override
  String toString() {
    return 'ShipmentHandlerState(errorMessage: $errorMessage, status: $status, address: $address, allDelivery: $allDelivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShipmentHandlerState &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.allDelivery, allDelivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(allDelivery));

  @JsonKey(ignore: true)
  @override
  _$ShipmentHandlerStateCopyWith<_ShipmentHandlerState> get copyWith =>
      __$ShipmentHandlerStateCopyWithImpl<_ShipmentHandlerState>(
          this, _$identity);
}

abstract class _ShipmentHandlerState implements ShipmentHandlerState {
  factory _ShipmentHandlerState(
      {required String errorMessage,
      required AppState status,
      LocationPointArg? address,
      List<Trip>? allDelivery}) = _$_ShipmentHandlerState;

  @override
  String get errorMessage;
  @override
  AppState get status;
  @override
  LocationPointArg? get address;
  @override
  List<Trip>? get allDelivery;
  @override
  @JsonKey(ignore: true)
  _$ShipmentHandlerStateCopyWith<_ShipmentHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}
