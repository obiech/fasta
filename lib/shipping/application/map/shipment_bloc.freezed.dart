// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shipment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShipmentEventTearOff {
  const _$ShipmentEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetCurrentLocation getCurrentLocation() {
    return const _GetCurrentLocation();
  }

  _GetAddress getAddress({required Position position}) {
    return _GetAddress(
      position: position,
    );
  }

  _SetMarkers setMarkers(
      {required String startAddress,
      required String destinationAddress,
      Position? currentPosition,
      String? currentAddress}) {
    return _SetMarkers(
      startAddress: startAddress,
      destinationAddress: destinationAddress,
      currentPosition: currentPosition,
      currentAddress: currentAddress,
    );
  }

  _GetGeographicLocation getGeographicLocation(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) {
    return _GetGeographicLocation(
      startCoordinate: startCoordinate,
      destinationCoordinates: destinationCoordinates,
    );
  }

  _CreatePolylines createPolylines(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) {
    return _CreatePolylines(
      startCoordinate: startCoordinate,
      destinationCoordinates: destinationCoordinates,
    );
  }

  _CalculateDistances calculateDistances({required List<LatLng> latLng}) {
    return _CalculateDistances(
      latLng: latLng,
    );
  }

  _DrawPolyLines drawPolyLines({required List<LatLng> latLng}) {
    return _DrawPolyLines(
      latLng: latLng,
    );
  }
}

/// @nodoc
const $ShipmentEvent = _$ShipmentEventTearOff();

/// @nodoc
mixin _$ShipmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentEventCopyWith<$Res> {
  factory $ShipmentEventCopyWith(
          ShipmentEvent value, $Res Function(ShipmentEvent) then) =
      _$ShipmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShipmentEventCopyWithImpl<$Res>
    implements $ShipmentEventCopyWith<$Res> {
  _$ShipmentEventCopyWithImpl(this._value, this._then);

  final ShipmentEvent _value;
  // ignore: unused_field
  final $Res Function(ShipmentEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ShipmentEventCopyWithImpl<$Res>
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
    return 'ShipmentEvent.started()';
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
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
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
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ShipmentEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetCurrentLocationCopyWith<$Res> {
  factory _$GetCurrentLocationCopyWith(
          _GetCurrentLocation value, $Res Function(_GetCurrentLocation) then) =
      __$GetCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCurrentLocationCopyWithImpl<$Res>
    extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$GetCurrentLocationCopyWith<$Res> {
  __$GetCurrentLocationCopyWithImpl(
      _GetCurrentLocation _value, $Res Function(_GetCurrentLocation) _then)
      : super(_value, (v) => _then(v as _GetCurrentLocation));

  @override
  _GetCurrentLocation get _value => super._value as _GetCurrentLocation;
}

/// @nodoc

class _$_GetCurrentLocation implements _GetCurrentLocation {
  const _$_GetCurrentLocation();

  @override
  String toString() {
    return 'ShipmentEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements ShipmentEvent {
  const factory _GetCurrentLocation() = _$_GetCurrentLocation;
}

/// @nodoc
abstract class _$GetAddressCopyWith<$Res> {
  factory _$GetAddressCopyWith(
          _GetAddress value, $Res Function(_GetAddress) then) =
      __$GetAddressCopyWithImpl<$Res>;
  $Res call({Position position});
}

/// @nodoc
class __$GetAddressCopyWithImpl<$Res> extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$GetAddressCopyWith<$Res> {
  __$GetAddressCopyWithImpl(
      _GetAddress _value, $Res Function(_GetAddress) _then)
      : super(_value, (v) => _then(v as _GetAddress));

  @override
  _GetAddress get _value => super._value as _GetAddress;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_GetAddress(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$_GetAddress implements _GetAddress {
  const _$_GetAddress({required this.position});

  @override
  final Position position;

  @override
  String toString() {
    return 'ShipmentEvent.getAddress(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAddress &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$GetAddressCopyWith<_GetAddress> get copyWith =>
      __$GetAddressCopyWithImpl<_GetAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return getAddress(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return getAddress?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements ShipmentEvent {
  const factory _GetAddress({required Position position}) = _$_GetAddress;

  Position get position;
  @JsonKey(ignore: true)
  _$GetAddressCopyWith<_GetAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SetMarkersCopyWith<$Res> {
  factory _$SetMarkersCopyWith(
          _SetMarkers value, $Res Function(_SetMarkers) then) =
      __$SetMarkersCopyWithImpl<$Res>;
  $Res call(
      {String startAddress,
      String destinationAddress,
      Position? currentPosition,
      String? currentAddress});
}

/// @nodoc
class __$SetMarkersCopyWithImpl<$Res> extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$SetMarkersCopyWith<$Res> {
  __$SetMarkersCopyWithImpl(
      _SetMarkers _value, $Res Function(_SetMarkers) _then)
      : super(_value, (v) => _then(v as _SetMarkers));

  @override
  _SetMarkers get _value => super._value as _SetMarkers;

  @override
  $Res call({
    Object? startAddress = freezed,
    Object? destinationAddress = freezed,
    Object? currentPosition = freezed,
    Object? currentAddress = freezed,
  }) {
    return _then(_SetMarkers(
      startAddress: startAddress == freezed
          ? _value.startAddress
          : startAddress // ignore: cast_nullable_to_non_nullable
              as String,
      destinationAddress: destinationAddress == freezed
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetMarkers implements _SetMarkers {
  const _$_SetMarkers(
      {required this.startAddress,
      required this.destinationAddress,
      this.currentPosition,
      this.currentAddress});

  @override
  final String startAddress;
  @override
  final String destinationAddress;
  @override
  final Position? currentPosition;
  @override
  final String? currentAddress;

  @override
  String toString() {
    return 'ShipmentEvent.setMarkers(startAddress: $startAddress, destinationAddress: $destinationAddress, currentPosition: $currentPosition, currentAddress: $currentAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetMarkers &&
            const DeepCollectionEquality()
                .equals(other.startAddress, startAddress) &&
            const DeepCollectionEquality()
                .equals(other.destinationAddress, destinationAddress) &&
            const DeepCollectionEquality()
                .equals(other.currentPosition, currentPosition) &&
            const DeepCollectionEquality()
                .equals(other.currentAddress, currentAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startAddress),
      const DeepCollectionEquality().hash(destinationAddress),
      const DeepCollectionEquality().hash(currentPosition),
      const DeepCollectionEquality().hash(currentAddress));

  @JsonKey(ignore: true)
  @override
  _$SetMarkersCopyWith<_SetMarkers> get copyWith =>
      __$SetMarkersCopyWithImpl<_SetMarkers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return setMarkers(
        startAddress, destinationAddress, currentPosition, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return setMarkers?.call(
        startAddress, destinationAddress, currentPosition, currentAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (setMarkers != null) {
      return setMarkers(
          startAddress, destinationAddress, currentPosition, currentAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return setMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return setMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (setMarkers != null) {
      return setMarkers(this);
    }
    return orElse();
  }
}

abstract class _SetMarkers implements ShipmentEvent {
  const factory _SetMarkers(
      {required String startAddress,
      required String destinationAddress,
      Position? currentPosition,
      String? currentAddress}) = _$_SetMarkers;

  String get startAddress;
  String get destinationAddress;
  Position? get currentPosition;
  String? get currentAddress;
  @JsonKey(ignore: true)
  _$SetMarkersCopyWith<_SetMarkers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGeographicLocationCopyWith<$Res> {
  factory _$GetGeographicLocationCopyWith(_GetGeographicLocation value,
          $Res Function(_GetGeographicLocation) then) =
      __$GetGeographicLocationCopyWithImpl<$Res>;
  $Res call({Coordinate startCoordinate, Coordinate destinationCoordinates});
}

/// @nodoc
class __$GetGeographicLocationCopyWithImpl<$Res>
    extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$GetGeographicLocationCopyWith<$Res> {
  __$GetGeographicLocationCopyWithImpl(_GetGeographicLocation _value,
      $Res Function(_GetGeographicLocation) _then)
      : super(_value, (v) => _then(v as _GetGeographicLocation));

  @override
  _GetGeographicLocation get _value => super._value as _GetGeographicLocation;

  @override
  $Res call({
    Object? startCoordinate = freezed,
    Object? destinationCoordinates = freezed,
  }) {
    return _then(_GetGeographicLocation(
      startCoordinate: startCoordinate == freezed
          ? _value.startCoordinate
          : startCoordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      destinationCoordinates: destinationCoordinates == freezed
          ? _value.destinationCoordinates
          : destinationCoordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }
}

/// @nodoc

class _$_GetGeographicLocation implements _GetGeographicLocation {
  const _$_GetGeographicLocation(
      {required this.startCoordinate, required this.destinationCoordinates});

  @override
  final Coordinate startCoordinate;
  @override
  final Coordinate destinationCoordinates;

  @override
  String toString() {
    return 'ShipmentEvent.getGeographicLocation(startCoordinate: $startCoordinate, destinationCoordinates: $destinationCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetGeographicLocation &&
            const DeepCollectionEquality()
                .equals(other.startCoordinate, startCoordinate) &&
            const DeepCollectionEquality()
                .equals(other.destinationCoordinates, destinationCoordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startCoordinate),
      const DeepCollectionEquality().hash(destinationCoordinates));

  @JsonKey(ignore: true)
  @override
  _$GetGeographicLocationCopyWith<_GetGeographicLocation> get copyWith =>
      __$GetGeographicLocationCopyWithImpl<_GetGeographicLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return getGeographicLocation(startCoordinate, destinationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return getGeographicLocation?.call(startCoordinate, destinationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getGeographicLocation != null) {
      return getGeographicLocation(startCoordinate, destinationCoordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return getGeographicLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return getGeographicLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (getGeographicLocation != null) {
      return getGeographicLocation(this);
    }
    return orElse();
  }
}

abstract class _GetGeographicLocation implements ShipmentEvent {
  const factory _GetGeographicLocation(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) = _$_GetGeographicLocation;

  Coordinate get startCoordinate;
  Coordinate get destinationCoordinates;
  @JsonKey(ignore: true)
  _$GetGeographicLocationCopyWith<_GetGeographicLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreatePolylinesCopyWith<$Res> {
  factory _$CreatePolylinesCopyWith(
          _CreatePolylines value, $Res Function(_CreatePolylines) then) =
      __$CreatePolylinesCopyWithImpl<$Res>;
  $Res call({Coordinate startCoordinate, Coordinate destinationCoordinates});
}

/// @nodoc
class __$CreatePolylinesCopyWithImpl<$Res>
    extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$CreatePolylinesCopyWith<$Res> {
  __$CreatePolylinesCopyWithImpl(
      _CreatePolylines _value, $Res Function(_CreatePolylines) _then)
      : super(_value, (v) => _then(v as _CreatePolylines));

  @override
  _CreatePolylines get _value => super._value as _CreatePolylines;

  @override
  $Res call({
    Object? startCoordinate = freezed,
    Object? destinationCoordinates = freezed,
  }) {
    return _then(_CreatePolylines(
      startCoordinate: startCoordinate == freezed
          ? _value.startCoordinate
          : startCoordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      destinationCoordinates: destinationCoordinates == freezed
          ? _value.destinationCoordinates
          : destinationCoordinates // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }
}

/// @nodoc

class _$_CreatePolylines implements _CreatePolylines {
  const _$_CreatePolylines(
      {required this.startCoordinate, required this.destinationCoordinates});

  @override
  final Coordinate startCoordinate;
  @override
  final Coordinate destinationCoordinates;

  @override
  String toString() {
    return 'ShipmentEvent.createPolylines(startCoordinate: $startCoordinate, destinationCoordinates: $destinationCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePolylines &&
            const DeepCollectionEquality()
                .equals(other.startCoordinate, startCoordinate) &&
            const DeepCollectionEquality()
                .equals(other.destinationCoordinates, destinationCoordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startCoordinate),
      const DeepCollectionEquality().hash(destinationCoordinates));

  @JsonKey(ignore: true)
  @override
  _$CreatePolylinesCopyWith<_CreatePolylines> get copyWith =>
      __$CreatePolylinesCopyWithImpl<_CreatePolylines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return createPolylines(startCoordinate, destinationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return createPolylines?.call(startCoordinate, destinationCoordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (createPolylines != null) {
      return createPolylines(startCoordinate, destinationCoordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return createPolylines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return createPolylines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (createPolylines != null) {
      return createPolylines(this);
    }
    return orElse();
  }
}

abstract class _CreatePolylines implements ShipmentEvent {
  const factory _CreatePolylines(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) = _$_CreatePolylines;

  Coordinate get startCoordinate;
  Coordinate get destinationCoordinates;
  @JsonKey(ignore: true)
  _$CreatePolylinesCopyWith<_CreatePolylines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CalculateDistancesCopyWith<$Res> {
  factory _$CalculateDistancesCopyWith(
          _CalculateDistances value, $Res Function(_CalculateDistances) then) =
      __$CalculateDistancesCopyWithImpl<$Res>;
  $Res call({List<LatLng> latLng});
}

/// @nodoc
class __$CalculateDistancesCopyWithImpl<$Res>
    extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$CalculateDistancesCopyWith<$Res> {
  __$CalculateDistancesCopyWithImpl(
      _CalculateDistances _value, $Res Function(_CalculateDistances) _then)
      : super(_value, (v) => _then(v as _CalculateDistances));

  @override
  _CalculateDistances get _value => super._value as _CalculateDistances;

  @override
  $Res call({
    Object? latLng = freezed,
  }) {
    return _then(_CalculateDistances(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$_CalculateDistances implements _CalculateDistances {
  const _$_CalculateDistances({required this.latLng});

  @override
  final List<LatLng> latLng;

  @override
  String toString() {
    return 'ShipmentEvent.calculateDistances(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculateDistances &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  _$CalculateDistancesCopyWith<_CalculateDistances> get copyWith =>
      __$CalculateDistancesCopyWithImpl<_CalculateDistances>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return calculateDistances(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return calculateDistances?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (calculateDistances != null) {
      return calculateDistances(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return calculateDistances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return calculateDistances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (calculateDistances != null) {
      return calculateDistances(this);
    }
    return orElse();
  }
}

abstract class _CalculateDistances implements ShipmentEvent {
  const factory _CalculateDistances({required List<LatLng> latLng}) =
      _$_CalculateDistances;

  List<LatLng> get latLng;
  @JsonKey(ignore: true)
  _$CalculateDistancesCopyWith<_CalculateDistances> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DrawPolyLinesCopyWith<$Res> {
  factory _$DrawPolyLinesCopyWith(
          _DrawPolyLines value, $Res Function(_DrawPolyLines) then) =
      __$DrawPolyLinesCopyWithImpl<$Res>;
  $Res call({List<LatLng> latLng});
}

/// @nodoc
class __$DrawPolyLinesCopyWithImpl<$Res>
    extends _$ShipmentEventCopyWithImpl<$Res>
    implements _$DrawPolyLinesCopyWith<$Res> {
  __$DrawPolyLinesCopyWithImpl(
      _DrawPolyLines _value, $Res Function(_DrawPolyLines) _then)
      : super(_value, (v) => _then(v as _DrawPolyLines));

  @override
  _DrawPolyLines get _value => super._value as _DrawPolyLines;

  @override
  $Res call({
    Object? latLng = freezed,
  }) {
    return _then(_DrawPolyLines(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$_DrawPolyLines implements _DrawPolyLines {
  const _$_DrawPolyLines({required this.latLng});

  @override
  final List<LatLng> latLng;

  @override
  String toString() {
    return 'ShipmentEvent.drawPolyLines(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DrawPolyLines &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  _$DrawPolyLinesCopyWith<_DrawPolyLines> get copyWith =>
      __$DrawPolyLinesCopyWithImpl<_DrawPolyLines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrentLocation,
    required TResult Function(Position position) getAddress,
    required TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)
        setMarkers,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        getGeographicLocation,
    required TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)
        createPolylines,
    required TResult Function(List<LatLng> latLng) calculateDistances,
    required TResult Function(List<LatLng> latLng) drawPolyLines,
  }) {
    return drawPolyLines(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
  }) {
    return drawPolyLines?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrentLocation,
    TResult Function(Position position)? getAddress,
    TResult Function(String startAddress, String destinationAddress,
            Position? currentPosition, String? currentAddress)?
        setMarkers,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        getGeographicLocation,
    TResult Function(
            Coordinate startCoordinate, Coordinate destinationCoordinates)?
        createPolylines,
    TResult Function(List<LatLng> latLng)? calculateDistances,
    TResult Function(List<LatLng> latLng)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (drawPolyLines != null) {
      return drawPolyLines(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_SetMarkers value) setMarkers,
    required TResult Function(_GetGeographicLocation value)
        getGeographicLocation,
    required TResult Function(_CreatePolylines value) createPolylines,
    required TResult Function(_CalculateDistances value) calculateDistances,
    required TResult Function(_DrawPolyLines value) drawPolyLines,
  }) {
    return drawPolyLines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
  }) {
    return drawPolyLines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_SetMarkers value)? setMarkers,
    TResult Function(_GetGeographicLocation value)? getGeographicLocation,
    TResult Function(_CreatePolylines value)? createPolylines,
    TResult Function(_CalculateDistances value)? calculateDistances,
    TResult Function(_DrawPolyLines value)? drawPolyLines,
    required TResult orElse(),
  }) {
    if (drawPolyLines != null) {
      return drawPolyLines(this);
    }
    return orElse();
  }
}

abstract class _DrawPolyLines implements ShipmentEvent {
  const factory _DrawPolyLines({required List<LatLng> latLng}) =
      _$_DrawPolyLines;

  List<LatLng> get latLng;
  @JsonKey(ignore: true)
  _$DrawPolyLinesCopyWith<_DrawPolyLines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShipmentStateTearOff {
  const _$ShipmentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CurrentLocation currentLocation(
      {Position? currentPosition, String? errorMessage}) {
    return _CurrentLocation(
      currentPosition: currentPosition,
      errorMessage: errorMessage,
    );
  }

  _CurrentAddress currentAddress(
      {required String currentAddress, String? errorMessage}) {
    return _CurrentAddress(
      currentAddress: currentAddress,
      errorMessage: errorMessage,
    );
  }

  _GetMarkers getMarkers({required Set<Marker> markers, String? errorMessage}) {
    return _GetMarkers(
      markers: markers,
      errorMessage: errorMessage,
    );
  }

  _GeographicLocation geographicLocation(
      {required GeographicLocation geographicLocation}) {
    return _GeographicLocation(
      geographicLocation: geographicLocation,
    );
  }

  _CalculatedDistance calculatedDistance({String distance = '0.00'}) {
    return _CalculatedDistance(
      distance: distance,
    );
  }

  _PolyLineMapForDrawing polyLineMapForDrawing(
      {required Map<PolylineId, Polyline> polyies}) {
    return _PolyLineMapForDrawing(
      polyies: polyies,
    );
  }
}

/// @nodoc
const $ShipmentState = _$ShipmentStateTearOff();

/// @nodoc
mixin _$ShipmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipmentStateCopyWith<$Res> {
  factory $ShipmentStateCopyWith(
          ShipmentState value, $Res Function(ShipmentState) then) =
      _$ShipmentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShipmentStateCopyWithImpl<$Res>
    implements $ShipmentStateCopyWith<$Res> {
  _$ShipmentStateCopyWithImpl(this._value, this._then);

  final ShipmentState _value;
  // ignore: unused_field
  final $Res Function(ShipmentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ShipmentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShipmentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CurrentLocationCopyWith<$Res> {
  factory _$CurrentLocationCopyWith(
          _CurrentLocation value, $Res Function(_CurrentLocation) then) =
      __$CurrentLocationCopyWithImpl<$Res>;
  $Res call({Position? currentPosition, String? errorMessage});
}

/// @nodoc
class __$CurrentLocationCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$CurrentLocationCopyWith<$Res> {
  __$CurrentLocationCopyWithImpl(
      _CurrentLocation _value, $Res Function(_CurrentLocation) _then)
      : super(_value, (v) => _then(v as _CurrentLocation));

  @override
  _CurrentLocation get _value => super._value as _CurrentLocation;

  @override
  $Res call({
    Object? currentPosition = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_CurrentLocation(
      currentPosition: currentPosition == freezed
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Position?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CurrentLocation implements _CurrentLocation {
  const _$_CurrentLocation({this.currentPosition, this.errorMessage});

  @override
  final Position? currentPosition;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ShipmentState.currentLocation(currentPosition: $currentPosition, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentLocation &&
            const DeepCollectionEquality()
                .equals(other.currentPosition, currentPosition) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPosition),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$CurrentLocationCopyWith<_CurrentLocation> get copyWith =>
      __$CurrentLocationCopyWithImpl<_CurrentLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return currentLocation(currentPosition, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return currentLocation?.call(currentPosition, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(currentPosition, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return currentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return currentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (currentLocation != null) {
      return currentLocation(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocation implements ShipmentState {
  const factory _CurrentLocation(
      {Position? currentPosition, String? errorMessage}) = _$_CurrentLocation;

  Position? get currentPosition;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$CurrentLocationCopyWith<_CurrentLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentAddressCopyWith<$Res> {
  factory _$CurrentAddressCopyWith(
          _CurrentAddress value, $Res Function(_CurrentAddress) then) =
      __$CurrentAddressCopyWithImpl<$Res>;
  $Res call({String currentAddress, String? errorMessage});
}

/// @nodoc
class __$CurrentAddressCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$CurrentAddressCopyWith<$Res> {
  __$CurrentAddressCopyWithImpl(
      _CurrentAddress _value, $Res Function(_CurrentAddress) _then)
      : super(_value, (v) => _then(v as _CurrentAddress));

  @override
  _CurrentAddress get _value => super._value as _CurrentAddress;

  @override
  $Res call({
    Object? currentAddress = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_CurrentAddress(
      currentAddress: currentAddress == freezed
          ? _value.currentAddress
          : currentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CurrentAddress implements _CurrentAddress {
  const _$_CurrentAddress({required this.currentAddress, this.errorMessage});

  @override
  final String currentAddress;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ShipmentState.currentAddress(currentAddress: $currentAddress, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentAddress &&
            const DeepCollectionEquality()
                .equals(other.currentAddress, currentAddress) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentAddress),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$CurrentAddressCopyWith<_CurrentAddress> get copyWith =>
      __$CurrentAddressCopyWithImpl<_CurrentAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return currentAddress(this.currentAddress, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return currentAddress?.call(this.currentAddress, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (currentAddress != null) {
      return currentAddress(this.currentAddress, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return currentAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return currentAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (currentAddress != null) {
      return currentAddress(this);
    }
    return orElse();
  }
}

abstract class _CurrentAddress implements ShipmentState {
  const factory _CurrentAddress(
      {required String currentAddress,
      String? errorMessage}) = _$_CurrentAddress;

  String get currentAddress;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$CurrentAddressCopyWith<_CurrentAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetMarkersCopyWith<$Res> {
  factory _$GetMarkersCopyWith(
          _GetMarkers value, $Res Function(_GetMarkers) then) =
      __$GetMarkersCopyWithImpl<$Res>;
  $Res call({Set<Marker> markers, String? errorMessage});
}

/// @nodoc
class __$GetMarkersCopyWithImpl<$Res> extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$GetMarkersCopyWith<$Res> {
  __$GetMarkersCopyWithImpl(
      _GetMarkers _value, $Res Function(_GetMarkers) _then)
      : super(_value, (v) => _then(v as _GetMarkers));

  @override
  _GetMarkers get _value => super._value as _GetMarkers;

  @override
  $Res call({
    Object? markers = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_GetMarkers(
      markers: markers == freezed
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetMarkers implements _GetMarkers {
  const _$_GetMarkers({required this.markers, this.errorMessage});

  @override
  final Set<Marker> markers;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ShipmentState.getMarkers(markers: $markers, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetMarkers &&
            const DeepCollectionEquality().equals(other.markers, markers) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(markers),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$GetMarkersCopyWith<_GetMarkers> get copyWith =>
      __$GetMarkersCopyWithImpl<_GetMarkers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return getMarkers(markers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return getMarkers?.call(markers, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (getMarkers != null) {
      return getMarkers(markers, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return getMarkers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return getMarkers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (getMarkers != null) {
      return getMarkers(this);
    }
    return orElse();
  }
}

abstract class _GetMarkers implements ShipmentState {
  const factory _GetMarkers(
      {required Set<Marker> markers, String? errorMessage}) = _$_GetMarkers;

  Set<Marker> get markers;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$GetMarkersCopyWith<_GetMarkers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeographicLocationCopyWith<$Res> {
  factory _$GeographicLocationCopyWith(
          _GeographicLocation value, $Res Function(_GeographicLocation) then) =
      __$GeographicLocationCopyWithImpl<$Res>;
  $Res call({GeographicLocation geographicLocation});
}

/// @nodoc
class __$GeographicLocationCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$GeographicLocationCopyWith<$Res> {
  __$GeographicLocationCopyWithImpl(
      _GeographicLocation _value, $Res Function(_GeographicLocation) _then)
      : super(_value, (v) => _then(v as _GeographicLocation));

  @override
  _GeographicLocation get _value => super._value as _GeographicLocation;

  @override
  $Res call({
    Object? geographicLocation = freezed,
  }) {
    return _then(_GeographicLocation(
      geographicLocation: geographicLocation == freezed
          ? _value.geographicLocation
          : geographicLocation // ignore: cast_nullable_to_non_nullable
              as GeographicLocation,
    ));
  }
}

/// @nodoc

class _$_GeographicLocation implements _GeographicLocation {
  const _$_GeographicLocation({required this.geographicLocation});

  @override
  final GeographicLocation geographicLocation;

  @override
  String toString() {
    return 'ShipmentState.geographicLocation(geographicLocation: $geographicLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeographicLocation &&
            const DeepCollectionEquality()
                .equals(other.geographicLocation, geographicLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(geographicLocation));

  @JsonKey(ignore: true)
  @override
  _$GeographicLocationCopyWith<_GeographicLocation> get copyWith =>
      __$GeographicLocationCopyWithImpl<_GeographicLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return geographicLocation(this.geographicLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return geographicLocation?.call(this.geographicLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (geographicLocation != null) {
      return geographicLocation(this.geographicLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return geographicLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return geographicLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (geographicLocation != null) {
      return geographicLocation(this);
    }
    return orElse();
  }
}

abstract class _GeographicLocation implements ShipmentState {
  const factory _GeographicLocation(
      {required GeographicLocation geographicLocation}) = _$_GeographicLocation;

  GeographicLocation get geographicLocation;
  @JsonKey(ignore: true)
  _$GeographicLocationCopyWith<_GeographicLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CalculatedDistanceCopyWith<$Res> {
  factory _$CalculatedDistanceCopyWith(
          _CalculatedDistance value, $Res Function(_CalculatedDistance) then) =
      __$CalculatedDistanceCopyWithImpl<$Res>;
  $Res call({String distance});
}

/// @nodoc
class __$CalculatedDistanceCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$CalculatedDistanceCopyWith<$Res> {
  __$CalculatedDistanceCopyWithImpl(
      _CalculatedDistance _value, $Res Function(_CalculatedDistance) _then)
      : super(_value, (v) => _then(v as _CalculatedDistance));

  @override
  _CalculatedDistance get _value => super._value as _CalculatedDistance;

  @override
  $Res call({
    Object? distance = freezed,
  }) {
    return _then(_CalculatedDistance(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CalculatedDistance implements _CalculatedDistance {
  const _$_CalculatedDistance({this.distance = '0.00'});

  @JsonKey()
  @override
  final String distance;

  @override
  String toString() {
    return 'ShipmentState.calculatedDistance(distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculatedDistance &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$CalculatedDistanceCopyWith<_CalculatedDistance> get copyWith =>
      __$CalculatedDistanceCopyWithImpl<_CalculatedDistance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return calculatedDistance(distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return calculatedDistance?.call(distance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (calculatedDistance != null) {
      return calculatedDistance(distance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return calculatedDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return calculatedDistance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (calculatedDistance != null) {
      return calculatedDistance(this);
    }
    return orElse();
  }
}

abstract class _CalculatedDistance implements ShipmentState {
  const factory _CalculatedDistance({String distance}) = _$_CalculatedDistance;

  String get distance;
  @JsonKey(ignore: true)
  _$CalculatedDistanceCopyWith<_CalculatedDistance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PolyLineMapForDrawingCopyWith<$Res> {
  factory _$PolyLineMapForDrawingCopyWith(_PolyLineMapForDrawing value,
          $Res Function(_PolyLineMapForDrawing) then) =
      __$PolyLineMapForDrawingCopyWithImpl<$Res>;
  $Res call({Map<PolylineId, Polyline> polyies});
}

/// @nodoc
class __$PolyLineMapForDrawingCopyWithImpl<$Res>
    extends _$ShipmentStateCopyWithImpl<$Res>
    implements _$PolyLineMapForDrawingCopyWith<$Res> {
  __$PolyLineMapForDrawingCopyWithImpl(_PolyLineMapForDrawing _value,
      $Res Function(_PolyLineMapForDrawing) _then)
      : super(_value, (v) => _then(v as _PolyLineMapForDrawing));

  @override
  _PolyLineMapForDrawing get _value => super._value as _PolyLineMapForDrawing;

  @override
  $Res call({
    Object? polyies = freezed,
  }) {
    return _then(_PolyLineMapForDrawing(
      polyies: polyies == freezed
          ? _value.polyies
          : polyies // ignore: cast_nullable_to_non_nullable
              as Map<PolylineId, Polyline>,
    ));
  }
}

/// @nodoc

class _$_PolyLineMapForDrawing implements _PolyLineMapForDrawing {
  const _$_PolyLineMapForDrawing({required this.polyies});

  @override
  final Map<PolylineId, Polyline> polyies;

  @override
  String toString() {
    return 'ShipmentState.polyLineMapForDrawing(polyies: $polyies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolyLineMapForDrawing &&
            const DeepCollectionEquality().equals(other.polyies, polyies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(polyies));

  @JsonKey(ignore: true)
  @override
  _$PolyLineMapForDrawingCopyWith<_PolyLineMapForDrawing> get copyWith =>
      __$PolyLineMapForDrawingCopyWithImpl<_PolyLineMapForDrawing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Position? currentPosition, String? errorMessage)
        currentLocation,
    required TResult Function(String currentAddress, String? errorMessage)
        currentAddress,
    required TResult Function(Set<Marker> markers, String? errorMessage)
        getMarkers,
    required TResult Function(GeographicLocation geographicLocation)
        geographicLocation,
    required TResult Function(String distance) calculatedDistance,
    required TResult Function(Map<PolylineId, Polyline> polyies)
        polyLineMapForDrawing,
  }) {
    return polyLineMapForDrawing(polyies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
  }) {
    return polyLineMapForDrawing?.call(polyies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Position? currentPosition, String? errorMessage)?
        currentLocation,
    TResult Function(String currentAddress, String? errorMessage)?
        currentAddress,
    TResult Function(Set<Marker> markers, String? errorMessage)? getMarkers,
    TResult Function(GeographicLocation geographicLocation)? geographicLocation,
    TResult Function(String distance)? calculatedDistance,
    TResult Function(Map<PolylineId, Polyline> polyies)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (polyLineMapForDrawing != null) {
      return polyLineMapForDrawing(polyies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CurrentLocation value) currentLocation,
    required TResult Function(_CurrentAddress value) currentAddress,
    required TResult Function(_GetMarkers value) getMarkers,
    required TResult Function(_GeographicLocation value) geographicLocation,
    required TResult Function(_CalculatedDistance value) calculatedDistance,
    required TResult Function(_PolyLineMapForDrawing value)
        polyLineMapForDrawing,
  }) {
    return polyLineMapForDrawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
  }) {
    return polyLineMapForDrawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CurrentLocation value)? currentLocation,
    TResult Function(_CurrentAddress value)? currentAddress,
    TResult Function(_GetMarkers value)? getMarkers,
    TResult Function(_GeographicLocation value)? geographicLocation,
    TResult Function(_CalculatedDistance value)? calculatedDistance,
    TResult Function(_PolyLineMapForDrawing value)? polyLineMapForDrawing,
    required TResult orElse(),
  }) {
    if (polyLineMapForDrawing != null) {
      return polyLineMapForDrawing(this);
    }
    return orElse();
  }
}

abstract class _PolyLineMapForDrawing implements ShipmentState {
  const factory _PolyLineMapForDrawing(
      {required Map<PolylineId, Polyline> polyies}) = _$_PolyLineMapForDrawing;

  Map<PolylineId, Polyline> get polyies;
  @JsonKey(ignore: true)
  _$PolyLineMapForDrawingCopyWith<_PolyLineMapForDrawing> get copyWith =>
      throw _privateConstructorUsedError;
}
