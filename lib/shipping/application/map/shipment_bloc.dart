import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/extension/lat_lng.dart';
import 'package:fasta/extension/position.dart';
import 'package:fasta/extension/string.dart';
import 'package:fasta/shipping/domain/entity/coordinate.dart';
import 'package:fasta/shipping/domain/entity/geographic_location.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

part 'shipment_event.dart';
part 'shipment_state.dart';
part 'shipment_bloc.freezed.dart';

class ShipmentBloc extends Bloc<ShipmentEvent, ShipmentState> {
  ShipmentBloc() : super(const _Initial()) {
    on<_GetCurrentLocation>(_onGetCurrentLocation);
    on<_GetAddress>(_onGetAddress);
    on<_SetMarkers>(_onSetMarkers);
    on<_GetGeographicLocation>(_onGetGeographicLocation);
    on<_CreatePolylines>(_onCreatePolylines);
    on<_CalculateDistances>(_onCalculateDistances);
    on<_DrawPolyLines>(_onDrawPolyLines);
  }
  _onGetCurrentLocation(
      _GetCurrentLocation event, Emitter<ShipmentState> emit) async {
    await [Permission.location].request();
    final res = await _getCurrentLocation();
    res.fold((l) {
      emit(ShipmentState.currentLocation(errorMessage: l));
    }, (r) {
      emit(ShipmentState.currentLocation(currentPosition: r));
      add(ShipmentEvent.getAddress(position: r));
    });
  }

  _onGetAddress(_GetAddress event, Emitter<ShipmentState> emit) async {
    final res = await event.position.getAddress();
    res.fold(
        (l) {}, (r) => emit(ShipmentState.currentAddress(currentAddress: r)));
  }

  _onSetMarkers(_SetMarkers event, Emitter<ShipmentState> emit) async {
    Set<Marker> markers = {};
    Coordinate? startCoordinate, destinationCoordinates;
    final startPosition = await event.startAddress.currentCoordinateFromAddress(
        currentAddress: event.currentAddress,
        currentPosition: event.currentPosition);
    final destinationPosition =
        await event.destinationAddress.destinationCoordinateFromAddress();

    startPosition.fold((l) {}, (r) {
      markers.add(r.getLocationMarkers(name: 'Start'));
      startCoordinate = r;
    });
    destinationPosition.fold((l) => null, (r) {
      markers.add(r.getLocationMarkers(name: 'Destination'));
      destinationCoordinates = r;
    });

    if (startCoordinate != null && destinationCoordinates != null) {
      emit(ShipmentState.getMarkers(markers: markers));
      add(ShipmentEvent.getGeographicLocation(
          startCoordinate: startCoordinate!,
          destinationCoordinates: destinationCoordinates!));
    }
  }

  _onGetGeographicLocation(
      _GetGeographicLocation event, Emitter<ShipmentState> emit) {
    final GeographicLocation res = GeographicLocation.fromCoordinates(
        destinationCoordinates: event.destinationCoordinates,
        startCoordinates: event.startCoordinate);
    emit(ShipmentState.geographicLocation(geographicLocation: res));
    add(ShipmentEvent.createPolylines(
        destinationCoordinates: event.destinationCoordinates,
        startCoordinate: event.startCoordinate));
  }

  _onCreatePolylines(
      _CreatePolylines event, Emitter<ShipmentState> emit) async {
    final res = await event.startCoordinate
        .createPolylines(event.destinationCoordinates);
    res.fold(
        (l) => null, (r) => add(ShipmentEvent.calculateDistances(latLng: r)));
  }

  _onCalculateDistances(
      _CalculateDistances event, Emitter<ShipmentState> emit) {
    final String res = event.latLng.calculateDistance();
    emit(ShipmentState.calculatedDistance(distance: res));
    add(ShipmentEvent.drawPolyLines(latLng: event.latLng));
  }

  _onDrawPolyLines(_DrawPolyLines event, Emitter<ShipmentState> emit) {
    final Map<PolylineId, Polyline> res = event.latLng.drawPolyPointsLine();
    emit(ShipmentState.polyLineMapForDrawing(polyies: res));
  }

  // Method for retrieving the current location
  Future<Either<ErrorMessage, CurrentPosition>> _getCurrentLocation() async {
    try {
      final Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return Right(position);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
