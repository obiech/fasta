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

  _GetAllDeliveries getAllDeliveries() {
    return const _GetAllDeliveries();
  }

  _GetAllDeliveriesPendingInvitations getAllDeliveriesPendingInvitations() {
    return const _GetAllDeliveriesPendingInvitations();
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

  _DeliveryCost deliveryCost(DeliveryCostArg arg) {
    return _DeliveryCost(
      arg,
    );
  }

  _GetPendingDelivery getPendingDelivery() {
    return const _GetPendingDelivery();
  }

  _AcceptDelivery acceptDelivery(String deliveryId) {
    return _AcceptDelivery(
      deliveryId,
    );
  }

  _RejectDelivery rejectDelivery(String deliveryId) {
    return _RejectDelivery(
      deliveryId,
    );
  }

  _FinishDelivery finishDelivery(String deliveryId) {
    return _FinishDelivery(
      deliveryId,
    );
  }

  _GetADelivery getADelivery(String deliveryId, Owner owner) {
    return _GetADelivery(
      deliveryId,
      owner,
    );
  }

  _DeliveryInvitations deliveryInvitations(DeliveryInvitation invitation) {
    return _DeliveryInvitations(
      invitation,
    );
  }

  _GetNearbyRiders getNearbyRiders(NearbyRider location) {
    return _GetNearbyRiders(
      location,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateShipment value) createShipment,
    required TResult Function(_CreateTrip value) createTrip,
    required TResult Function(_GetAllDeliveries value) getAllDeliveries,
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return createShipment(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return createShipment?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return createTrip(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return createTrip?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
}

/// @nodoc

class _$_GetAllDeliveries implements _GetAllDeliveries {
  const _$_GetAllDeliveries();

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getAllDeliveries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllDeliveries);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getAllDeliveries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getAllDeliveries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getAllDeliveries != null) {
      return getAllDeliveries();
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getAllDeliveries != null) {
      return getAllDeliveries(this);
    }
    return orElse();
  }
}

abstract class _GetAllDeliveries implements ShipmentHandlerEvent {
  const factory _GetAllDeliveries() = _$_GetAllDeliveries;
}

/// @nodoc
abstract class _$GetAllDeliveriesPendingInvitationsCopyWith<$Res> {
  factory _$GetAllDeliveriesPendingInvitationsCopyWith(
          _GetAllDeliveriesPendingInvitations value,
          $Res Function(_GetAllDeliveriesPendingInvitations) then) =
      __$GetAllDeliveriesPendingInvitationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllDeliveriesPendingInvitationsCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetAllDeliveriesPendingInvitationsCopyWith<$Res> {
  __$GetAllDeliveriesPendingInvitationsCopyWithImpl(
      _GetAllDeliveriesPendingInvitations _value,
      $Res Function(_GetAllDeliveriesPendingInvitations) _then)
      : super(_value, (v) => _then(v as _GetAllDeliveriesPendingInvitations));

  @override
  _GetAllDeliveriesPendingInvitations get _value =>
      super._value as _GetAllDeliveriesPendingInvitations;
}

/// @nodoc

class _$_GetAllDeliveriesPendingInvitations
    implements _GetAllDeliveriesPendingInvitations {
  const _$_GetAllDeliveriesPendingInvitations();

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getAllDeliveriesPendingInvitations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAllDeliveriesPendingInvitations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getAllDeliveriesPendingInvitations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getAllDeliveriesPendingInvitations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getAllDeliveriesPendingInvitations != null) {
      return getAllDeliveriesPendingInvitations();
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return getAllDeliveriesPendingInvitations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return getAllDeliveriesPendingInvitations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getAllDeliveriesPendingInvitations != null) {
      return getAllDeliveriesPendingInvitations(this);
    }
    return orElse();
  }
}

abstract class _GetAllDeliveriesPendingInvitations
    implements ShipmentHandlerEvent {
  const factory _GetAllDeliveriesPendingInvitations() =
      _$_GetAllDeliveriesPendingInvitations;
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getAllShipment(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getAllShipment?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return updateTripStatus(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return updateTripStatus?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return acceptCompletedDelivery(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return acceptCompletedDelivery?.call(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return rateDelivery(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return rateDelivery?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return tipDelivery(deliveryId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return tipDelivery?.call(deliveryId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
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
abstract class _$DeliveryCostCopyWith<$Res> {
  factory _$DeliveryCostCopyWith(
          _DeliveryCost value, $Res Function(_DeliveryCost) then) =
      __$DeliveryCostCopyWithImpl<$Res>;
  $Res call({DeliveryCostArg arg});
}

/// @nodoc
class __$DeliveryCostCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$DeliveryCostCopyWith<$Res> {
  __$DeliveryCostCopyWithImpl(
      _DeliveryCost _value, $Res Function(_DeliveryCost) _then)
      : super(_value, (v) => _then(v as _DeliveryCost));

  @override
  _DeliveryCost get _value => super._value as _DeliveryCost;

  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_DeliveryCost(
      arg == freezed
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as DeliveryCostArg,
    ));
  }
}

/// @nodoc

class _$_DeliveryCost implements _DeliveryCost {
  const _$_DeliveryCost(this.arg);

  @override
  final DeliveryCostArg arg;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.deliveryCost(arg: $arg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryCost &&
            const DeepCollectionEquality().equals(other.arg, arg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(arg));

  @JsonKey(ignore: true)
  @override
  _$DeliveryCostCopyWith<_DeliveryCost> get copyWith =>
      __$DeliveryCostCopyWithImpl<_DeliveryCost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return deliveryCost(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return deliveryCost?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (deliveryCost != null) {
      return deliveryCost(arg);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return deliveryCost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return deliveryCost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (deliveryCost != null) {
      return deliveryCost(this);
    }
    return orElse();
  }
}

abstract class _DeliveryCost implements ShipmentHandlerEvent {
  const factory _DeliveryCost(DeliveryCostArg arg) = _$_DeliveryCost;

  DeliveryCostArg get arg;
  @JsonKey(ignore: true)
  _$DeliveryCostCopyWith<_DeliveryCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetPendingDeliveryCopyWith<$Res> {
  factory _$GetPendingDeliveryCopyWith(
          _GetPendingDelivery value, $Res Function(_GetPendingDelivery) then) =
      __$GetPendingDeliveryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPendingDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetPendingDeliveryCopyWith<$Res> {
  __$GetPendingDeliveryCopyWithImpl(
      _GetPendingDelivery _value, $Res Function(_GetPendingDelivery) _then)
      : super(_value, (v) => _then(v as _GetPendingDelivery));

  @override
  _GetPendingDelivery get _value => super._value as _GetPendingDelivery;
}

/// @nodoc

class _$_GetPendingDelivery implements _GetPendingDelivery {
  const _$_GetPendingDelivery();

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getPendingDelivery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPendingDelivery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getPendingDelivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getPendingDelivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getPendingDelivery != null) {
      return getPendingDelivery();
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return getPendingDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return getPendingDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getPendingDelivery != null) {
      return getPendingDelivery(this);
    }
    return orElse();
  }
}

abstract class _GetPendingDelivery implements ShipmentHandlerEvent {
  const factory _GetPendingDelivery() = _$_GetPendingDelivery;
}

/// @nodoc
abstract class _$AcceptDeliveryCopyWith<$Res> {
  factory _$AcceptDeliveryCopyWith(
          _AcceptDelivery value, $Res Function(_AcceptDelivery) then) =
      __$AcceptDeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId});
}

/// @nodoc
class __$AcceptDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$AcceptDeliveryCopyWith<$Res> {
  __$AcceptDeliveryCopyWithImpl(
      _AcceptDelivery _value, $Res Function(_AcceptDelivery) _then)
      : super(_value, (v) => _then(v as _AcceptDelivery));

  @override
  _AcceptDelivery get _value => super._value as _AcceptDelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
  }) {
    return _then(_AcceptDelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AcceptDelivery implements _AcceptDelivery {
  const _$_AcceptDelivery(this.deliveryId);

  @override
  final String deliveryId;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.acceptDelivery(deliveryId: $deliveryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AcceptDelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deliveryId));

  @JsonKey(ignore: true)
  @override
  _$AcceptDeliveryCopyWith<_AcceptDelivery> get copyWith =>
      __$AcceptDeliveryCopyWithImpl<_AcceptDelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return acceptDelivery(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return acceptDelivery?.call(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (acceptDelivery != null) {
      return acceptDelivery(deliveryId);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return acceptDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return acceptDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (acceptDelivery != null) {
      return acceptDelivery(this);
    }
    return orElse();
  }
}

abstract class _AcceptDelivery implements ShipmentHandlerEvent {
  const factory _AcceptDelivery(String deliveryId) = _$_AcceptDelivery;

  String get deliveryId;
  @JsonKey(ignore: true)
  _$AcceptDeliveryCopyWith<_AcceptDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RejectDeliveryCopyWith<$Res> {
  factory _$RejectDeliveryCopyWith(
          _RejectDelivery value, $Res Function(_RejectDelivery) then) =
      __$RejectDeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId});
}

/// @nodoc
class __$RejectDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$RejectDeliveryCopyWith<$Res> {
  __$RejectDeliveryCopyWithImpl(
      _RejectDelivery _value, $Res Function(_RejectDelivery) _then)
      : super(_value, (v) => _then(v as _RejectDelivery));

  @override
  _RejectDelivery get _value => super._value as _RejectDelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
  }) {
    return _then(_RejectDelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RejectDelivery implements _RejectDelivery {
  const _$_RejectDelivery(this.deliveryId);

  @override
  final String deliveryId;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.rejectDelivery(deliveryId: $deliveryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RejectDelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deliveryId));

  @JsonKey(ignore: true)
  @override
  _$RejectDeliveryCopyWith<_RejectDelivery> get copyWith =>
      __$RejectDeliveryCopyWithImpl<_RejectDelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return rejectDelivery(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return rejectDelivery?.call(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (rejectDelivery != null) {
      return rejectDelivery(deliveryId);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return rejectDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return rejectDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (rejectDelivery != null) {
      return rejectDelivery(this);
    }
    return orElse();
  }
}

abstract class _RejectDelivery implements ShipmentHandlerEvent {
  const factory _RejectDelivery(String deliveryId) = _$_RejectDelivery;

  String get deliveryId;
  @JsonKey(ignore: true)
  _$RejectDeliveryCopyWith<_RejectDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishDeliveryCopyWith<$Res> {
  factory _$FinishDeliveryCopyWith(
          _FinishDelivery value, $Res Function(_FinishDelivery) then) =
      __$FinishDeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId});
}

/// @nodoc
class __$FinishDeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$FinishDeliveryCopyWith<$Res> {
  __$FinishDeliveryCopyWithImpl(
      _FinishDelivery _value, $Res Function(_FinishDelivery) _then)
      : super(_value, (v) => _then(v as _FinishDelivery));

  @override
  _FinishDelivery get _value => super._value as _FinishDelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
  }) {
    return _then(_FinishDelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FinishDelivery implements _FinishDelivery {
  const _$_FinishDelivery(this.deliveryId);

  @override
  final String deliveryId;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.finishDelivery(deliveryId: $deliveryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinishDelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deliveryId));

  @JsonKey(ignore: true)
  @override
  _$FinishDeliveryCopyWith<_FinishDelivery> get copyWith =>
      __$FinishDeliveryCopyWithImpl<_FinishDelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return finishDelivery(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return finishDelivery?.call(deliveryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (finishDelivery != null) {
      return finishDelivery(deliveryId);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return finishDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return finishDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (finishDelivery != null) {
      return finishDelivery(this);
    }
    return orElse();
  }
}

abstract class _FinishDelivery implements ShipmentHandlerEvent {
  const factory _FinishDelivery(String deliveryId) = _$_FinishDelivery;

  String get deliveryId;
  @JsonKey(ignore: true)
  _$FinishDeliveryCopyWith<_FinishDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetADeliveryCopyWith<$Res> {
  factory _$GetADeliveryCopyWith(
          _GetADelivery value, $Res Function(_GetADelivery) then) =
      __$GetADeliveryCopyWithImpl<$Res>;
  $Res call({String deliveryId, Owner owner});
}

/// @nodoc
class __$GetADeliveryCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetADeliveryCopyWith<$Res> {
  __$GetADeliveryCopyWithImpl(
      _GetADelivery _value, $Res Function(_GetADelivery) _then)
      : super(_value, (v) => _then(v as _GetADelivery));

  @override
  _GetADelivery get _value => super._value as _GetADelivery;

  @override
  $Res call({
    Object? deliveryId = freezed,
    Object? owner = freezed,
  }) {
    return _then(_GetADelivery(
      deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }
}

/// @nodoc

class _$_GetADelivery implements _GetADelivery {
  const _$_GetADelivery(this.deliveryId, this.owner);

  @override
  final String deliveryId;
  @override
  final Owner owner;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getADelivery(deliveryId: $deliveryId, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetADelivery &&
            const DeepCollectionEquality()
                .equals(other.deliveryId, deliveryId) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deliveryId),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$GetADeliveryCopyWith<_GetADelivery> get copyWith =>
      __$GetADeliveryCopyWithImpl<_GetADelivery>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getADelivery(deliveryId, owner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getADelivery?.call(deliveryId, owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getADelivery != null) {
      return getADelivery(deliveryId, owner);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return getADelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return getADelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getADelivery != null) {
      return getADelivery(this);
    }
    return orElse();
  }
}

abstract class _GetADelivery implements ShipmentHandlerEvent {
  const factory _GetADelivery(String deliveryId, Owner owner) = _$_GetADelivery;

  String get deliveryId;
  Owner get owner;
  @JsonKey(ignore: true)
  _$GetADeliveryCopyWith<_GetADelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeliveryInvitationsCopyWith<$Res> {
  factory _$DeliveryInvitationsCopyWith(_DeliveryInvitations value,
          $Res Function(_DeliveryInvitations) then) =
      __$DeliveryInvitationsCopyWithImpl<$Res>;
  $Res call({DeliveryInvitation invitation});
}

/// @nodoc
class __$DeliveryInvitationsCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$DeliveryInvitationsCopyWith<$Res> {
  __$DeliveryInvitationsCopyWithImpl(
      _DeliveryInvitations _value, $Res Function(_DeliveryInvitations) _then)
      : super(_value, (v) => _then(v as _DeliveryInvitations));

  @override
  _DeliveryInvitations get _value => super._value as _DeliveryInvitations;

  @override
  $Res call({
    Object? invitation = freezed,
  }) {
    return _then(_DeliveryInvitations(
      invitation == freezed
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation,
    ));
  }
}

/// @nodoc

class _$_DeliveryInvitations implements _DeliveryInvitations {
  const _$_DeliveryInvitations(this.invitation);

  @override
  final DeliveryInvitation invitation;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.deliveryInvitations(invitation: $invitation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryInvitations &&
            const DeepCollectionEquality()
                .equals(other.invitation, invitation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(invitation));

  @JsonKey(ignore: true)
  @override
  _$DeliveryInvitationsCopyWith<_DeliveryInvitations> get copyWith =>
      __$DeliveryInvitationsCopyWithImpl<_DeliveryInvitations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return deliveryInvitations(invitation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return deliveryInvitations?.call(invitation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (deliveryInvitations != null) {
      return deliveryInvitations(invitation);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return deliveryInvitations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return deliveryInvitations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (deliveryInvitations != null) {
      return deliveryInvitations(this);
    }
    return orElse();
  }
}

abstract class _DeliveryInvitations implements ShipmentHandlerEvent {
  const factory _DeliveryInvitations(DeliveryInvitation invitation) =
      _$_DeliveryInvitations;

  DeliveryInvitation get invitation;
  @JsonKey(ignore: true)
  _$DeliveryInvitationsCopyWith<_DeliveryInvitations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetNearbyRidersCopyWith<$Res> {
  factory _$GetNearbyRidersCopyWith(
          _GetNearbyRiders value, $Res Function(_GetNearbyRiders) then) =
      __$GetNearbyRidersCopyWithImpl<$Res>;
  $Res call({NearbyRider location});
}

/// @nodoc
class __$GetNearbyRidersCopyWithImpl<$Res>
    extends _$ShipmentHandlerEventCopyWithImpl<$Res>
    implements _$GetNearbyRidersCopyWith<$Res> {
  __$GetNearbyRidersCopyWithImpl(
      _GetNearbyRiders _value, $Res Function(_GetNearbyRiders) _then)
      : super(_value, (v) => _then(v as _GetNearbyRiders));

  @override
  _GetNearbyRiders get _value => super._value as _GetNearbyRiders;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_GetNearbyRiders(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NearbyRider,
    ));
  }
}

/// @nodoc

class _$_GetNearbyRiders implements _GetNearbyRiders {
  const _$_GetNearbyRiders(this.location);

  @override
  final NearbyRider location;

  @override
  String toString() {
    return 'ShipmentHandlerEvent.getNearbyRiders(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetNearbyRiders &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$GetNearbyRidersCopyWith<_GetNearbyRiders> get copyWith =>
      __$GetNearbyRidersCopyWithImpl<_GetNearbyRiders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateShipmentArg arg) createShipment,
    required TResult Function(CreateTripArg arg) createTrip,
    required TResult Function() getAllDeliveries,
    required TResult Function() getAllDeliveriesPendingInvitations,
    required TResult Function(String email) getAllShipment,
    required TResult Function(String id, String status) updateTripStatus,
    required TResult Function(String deliveryId) acceptCompletedDelivery,
    required TResult Function(RateDeliveryArg arg) rateDelivery,
    required TResult Function(String deliveryId, String amount) tipDelivery,
    required TResult Function(DeliveryCostArg arg) deliveryCost,
    required TResult Function() getPendingDelivery,
    required TResult Function(String deliveryId) acceptDelivery,
    required TResult Function(String deliveryId) rejectDelivery,
    required TResult Function(String deliveryId) finishDelivery,
    required TResult Function(String deliveryId, Owner owner) getADelivery,
    required TResult Function(DeliveryInvitation invitation)
        deliveryInvitations,
    required TResult Function(NearbyRider location) getNearbyRiders,
  }) {
    return getNearbyRiders(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
  }) {
    return getNearbyRiders?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateShipmentArg arg)? createShipment,
    TResult Function(CreateTripArg arg)? createTrip,
    TResult Function()? getAllDeliveries,
    TResult Function()? getAllDeliveriesPendingInvitations,
    TResult Function(String email)? getAllShipment,
    TResult Function(String id, String status)? updateTripStatus,
    TResult Function(String deliveryId)? acceptCompletedDelivery,
    TResult Function(RateDeliveryArg arg)? rateDelivery,
    TResult Function(String deliveryId, String amount)? tipDelivery,
    TResult Function(DeliveryCostArg arg)? deliveryCost,
    TResult Function()? getPendingDelivery,
    TResult Function(String deliveryId)? acceptDelivery,
    TResult Function(String deliveryId)? rejectDelivery,
    TResult Function(String deliveryId)? finishDelivery,
    TResult Function(String deliveryId, Owner owner)? getADelivery,
    TResult Function(DeliveryInvitation invitation)? deliveryInvitations,
    TResult Function(NearbyRider location)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getNearbyRiders != null) {
      return getNearbyRiders(location);
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
    required TResult Function(_GetAllDeliveriesPendingInvitations value)
        getAllDeliveriesPendingInvitations,
    required TResult Function(_GetAllShipment value) getAllShipment,
    required TResult Function(_UpdateTripStatus value) updateTripStatus,
    required TResult Function(_AcceptCompletedDelivery value)
        acceptCompletedDelivery,
    required TResult Function(_RateDelivery value) rateDelivery,
    required TResult Function(_TipDelivery value) tipDelivery,
    required TResult Function(_DeliveryCost value) deliveryCost,
    required TResult Function(_GetPendingDelivery value) getPendingDelivery,
    required TResult Function(_AcceptDelivery value) acceptDelivery,
    required TResult Function(_RejectDelivery value) rejectDelivery,
    required TResult Function(_FinishDelivery value) finishDelivery,
    required TResult Function(_GetADelivery value) getADelivery,
    required TResult Function(_DeliveryInvitations value) deliveryInvitations,
    required TResult Function(_GetNearbyRiders value) getNearbyRiders,
  }) {
    return getNearbyRiders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
  }) {
    return getNearbyRiders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateShipment value)? createShipment,
    TResult Function(_CreateTrip value)? createTrip,
    TResult Function(_GetAllDeliveries value)? getAllDeliveries,
    TResult Function(_GetAllDeliveriesPendingInvitations value)?
        getAllDeliveriesPendingInvitations,
    TResult Function(_GetAllShipment value)? getAllShipment,
    TResult Function(_UpdateTripStatus value)? updateTripStatus,
    TResult Function(_AcceptCompletedDelivery value)? acceptCompletedDelivery,
    TResult Function(_RateDelivery value)? rateDelivery,
    TResult Function(_TipDelivery value)? tipDelivery,
    TResult Function(_DeliveryCost value)? deliveryCost,
    TResult Function(_GetPendingDelivery value)? getPendingDelivery,
    TResult Function(_AcceptDelivery value)? acceptDelivery,
    TResult Function(_RejectDelivery value)? rejectDelivery,
    TResult Function(_FinishDelivery value)? finishDelivery,
    TResult Function(_GetADelivery value)? getADelivery,
    TResult Function(_DeliveryInvitations value)? deliveryInvitations,
    TResult Function(_GetNearbyRiders value)? getNearbyRiders,
    required TResult orElse(),
  }) {
    if (getNearbyRiders != null) {
      return getNearbyRiders(this);
    }
    return orElse();
  }
}

abstract class _GetNearbyRiders implements ShipmentHandlerEvent {
  const factory _GetNearbyRiders(NearbyRider location) = _$_GetNearbyRiders;

  NearbyRider get location;
  @JsonKey(ignore: true)
  _$GetNearbyRidersCopyWith<_GetNearbyRiders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShipmentHandlerStateTearOff {
  const _$ShipmentHandlerStateTearOff();

  _ShipmentHandlerState call(
      {required String errorMessage,
      required AppState status,
      LocationPointArg? address,
      DeliveryInvitation? pendingInvitations,
      String? deliveryEstimate,
      Set<Marker>? riders,
      DeliveryModel? delivery,
      @Deprecated('replace with deliverySummary')
          List<DeliverySummary>? deliverySummary,
      DeliveryInvitation? invitationEvent,
      DeliverySummary? newDeliveryEvent,
      List<DeliverySummaryDTO>? allDelivery}) {
    return _ShipmentHandlerState(
      errorMessage: errorMessage,
      status: status,
      address: address,
      pendingInvitations: pendingInvitations,
      deliveryEstimate: deliveryEstimate,
      riders: riders,
      delivery: delivery,
      deliverySummary: deliverySummary,
      invitationEvent: invitationEvent,
      newDeliveryEvent: newDeliveryEvent,
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
  DeliveryInvitation? get pendingInvitations =>
      throw _privateConstructorUsedError; // bool is
  String? get deliveryEstimate => throw _privateConstructorUsedError;
  Set<Marker>? get riders => throw _privateConstructorUsedError;
  DeliveryModel? get delivery => throw _privateConstructorUsedError;
  @Deprecated('replace with deliverySummary')
  List<DeliverySummary>? get deliverySummary =>
      throw _privateConstructorUsedError;
  DeliveryInvitation? get invitationEvent => throw _privateConstructorUsedError;
  DeliverySummary? get newDeliveryEvent => throw _privateConstructorUsedError;
  List<DeliverySummaryDTO>? get allDelivery =>
      throw _privateConstructorUsedError;

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
      DeliveryInvitation? pendingInvitations,
      String? deliveryEstimate,
      Set<Marker>? riders,
      DeliveryModel? delivery,
      @Deprecated('replace with deliverySummary')
          List<DeliverySummary>? deliverySummary,
      DeliveryInvitation? invitationEvent,
      DeliverySummary? newDeliveryEvent,
      List<DeliverySummaryDTO>? allDelivery});
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
    Object? pendingInvitations = freezed,
    Object? deliveryEstimate = freezed,
    Object? riders = freezed,
    Object? delivery = freezed,
    Object? deliverySummary = freezed,
    Object? invitationEvent = freezed,
    Object? newDeliveryEvent = freezed,
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
      pendingInvitations: pendingInvitations == freezed
          ? _value.pendingInvitations
          : pendingInvitations // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      deliveryEstimate: deliveryEstimate == freezed
          ? _value.deliveryEstimate
          : deliveryEstimate // ignore: cast_nullable_to_non_nullable
              as String?,
      riders: riders == freezed
          ? _value.riders
          : riders // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryModel?,
      deliverySummary: deliverySummary == freezed
          ? _value.deliverySummary
          : deliverySummary // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummary>?,
      invitationEvent: invitationEvent == freezed
          ? _value.invitationEvent
          : invitationEvent // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      newDeliveryEvent: newDeliveryEvent == freezed
          ? _value.newDeliveryEvent
          : newDeliveryEvent // ignore: cast_nullable_to_non_nullable
              as DeliverySummary?,
      allDelivery: allDelivery == freezed
          ? _value.allDelivery
          : allDelivery // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummaryDTO>?,
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
      DeliveryInvitation? pendingInvitations,
      String? deliveryEstimate,
      Set<Marker>? riders,
      DeliveryModel? delivery,
      @Deprecated('replace with deliverySummary')
          List<DeliverySummary>? deliverySummary,
      DeliveryInvitation? invitationEvent,
      DeliverySummary? newDeliveryEvent,
      List<DeliverySummaryDTO>? allDelivery});
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
    Object? pendingInvitations = freezed,
    Object? deliveryEstimate = freezed,
    Object? riders = freezed,
    Object? delivery = freezed,
    Object? deliverySummary = freezed,
    Object? invitationEvent = freezed,
    Object? newDeliveryEvent = freezed,
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
      pendingInvitations: pendingInvitations == freezed
          ? _value.pendingInvitations
          : pendingInvitations // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      deliveryEstimate: deliveryEstimate == freezed
          ? _value.deliveryEstimate
          : deliveryEstimate // ignore: cast_nullable_to_non_nullable
              as String?,
      riders: riders == freezed
          ? _value.riders
          : riders // ignore: cast_nullable_to_non_nullable
              as Set<Marker>?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as DeliveryModel?,
      deliverySummary: deliverySummary == freezed
          ? _value.deliverySummary
          : deliverySummary // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummary>?,
      invitationEvent: invitationEvent == freezed
          ? _value.invitationEvent
          : invitationEvent // ignore: cast_nullable_to_non_nullable
              as DeliveryInvitation?,
      newDeliveryEvent: newDeliveryEvent == freezed
          ? _value.newDeliveryEvent
          : newDeliveryEvent // ignore: cast_nullable_to_non_nullable
              as DeliverySummary?,
      allDelivery: allDelivery == freezed
          ? _value.allDelivery
          : allDelivery // ignore: cast_nullable_to_non_nullable
              as List<DeliverySummaryDTO>?,
    ));
  }
}

/// @nodoc

class _$_ShipmentHandlerState implements _ShipmentHandlerState {
  _$_ShipmentHandlerState(
      {required this.errorMessage,
      required this.status,
      this.address,
      this.pendingInvitations,
      this.deliveryEstimate,
      this.riders,
      this.delivery,
      @Deprecated('replace with deliverySummary') this.deliverySummary,
      this.invitationEvent,
      this.newDeliveryEvent,
      this.allDelivery});

  @override
  final String errorMessage;
  @override
  final AppState status;
  @override
  final LocationPointArg? address;
  @override
  final DeliveryInvitation? pendingInvitations;
  @override // bool is
  final String? deliveryEstimate;
  @override
  final Set<Marker>? riders;
  @override
  final DeliveryModel? delivery;
  @override
  @Deprecated('replace with deliverySummary')
  final List<DeliverySummary>? deliverySummary;
  @override
  final DeliveryInvitation? invitationEvent;
  @override
  final DeliverySummary? newDeliveryEvent;
  @override
  final List<DeliverySummaryDTO>? allDelivery;

  @override
  String toString() {
    return 'ShipmentHandlerState(errorMessage: $errorMessage, status: $status, address: $address, pendingInvitations: $pendingInvitations, deliveryEstimate: $deliveryEstimate, riders: $riders, delivery: $delivery, deliverySummary: $deliverySummary, invitationEvent: $invitationEvent, newDeliveryEvent: $newDeliveryEvent, allDelivery: $allDelivery)';
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
                .equals(other.pendingInvitations, pendingInvitations) &&
            const DeepCollectionEquality()
                .equals(other.deliveryEstimate, deliveryEstimate) &&
            const DeepCollectionEquality().equals(other.riders, riders) &&
            const DeepCollectionEquality().equals(other.delivery, delivery) &&
            const DeepCollectionEquality()
                .equals(other.deliverySummary, deliverySummary) &&
            const DeepCollectionEquality()
                .equals(other.invitationEvent, invitationEvent) &&
            const DeepCollectionEquality()
                .equals(other.newDeliveryEvent, newDeliveryEvent) &&
            const DeepCollectionEquality()
                .equals(other.allDelivery, allDelivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(pendingInvitations),
      const DeepCollectionEquality().hash(deliveryEstimate),
      const DeepCollectionEquality().hash(riders),
      const DeepCollectionEquality().hash(delivery),
      const DeepCollectionEquality().hash(deliverySummary),
      const DeepCollectionEquality().hash(invitationEvent),
      const DeepCollectionEquality().hash(newDeliveryEvent),
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
      DeliveryInvitation? pendingInvitations,
      String? deliveryEstimate,
      Set<Marker>? riders,
      DeliveryModel? delivery,
      @Deprecated('replace with deliverySummary')
          List<DeliverySummary>? deliverySummary,
      DeliveryInvitation? invitationEvent,
      DeliverySummary? newDeliveryEvent,
      List<DeliverySummaryDTO>? allDelivery}) = _$_ShipmentHandlerState;

  @override
  String get errorMessage;
  @override
  AppState get status;
  @override
  LocationPointArg? get address;
  @override
  DeliveryInvitation? get pendingInvitations;
  @override // bool is
  String? get deliveryEstimate;
  @override
  Set<Marker>? get riders;
  @override
  DeliveryModel? get delivery;
  @override
  @Deprecated('replace with deliverySummary')
  List<DeliverySummary>? get deliverySummary;
  @override
  DeliveryInvitation? get invitationEvent;
  @override
  DeliverySummary? get newDeliveryEvent;
  @override
  List<DeliverySummaryDTO>? get allDelivery;
  @override
  @JsonKey(ignore: true)
  _$ShipmentHandlerStateCopyWith<_ShipmentHandlerState> get copyWith =>
      throw _privateConstructorUsedError;
}
