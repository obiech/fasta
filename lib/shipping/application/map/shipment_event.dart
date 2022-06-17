part of 'shipment_bloc.dart';

@freezed
class ShipmentEvent with _$ShipmentEvent {
  const factory ShipmentEvent.started() = _Started;
  const factory ShipmentEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory ShipmentEvent.getAddress({required Position position}) =
      _GetAddress;
  const factory ShipmentEvent.setMarkers({
    required String startAddress,
    required String destinationAddress,
    Position? currentPosition,
    String? currentAddress,
  }) = _SetMarkers;

  const factory ShipmentEvent.getGeographicLocation(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) = _GetGeographicLocation;

  const factory ShipmentEvent.createPolylines(
      {required Coordinate startCoordinate,
      required Coordinate destinationCoordinates}) = _CreatePolylines;

  const factory ShipmentEvent.calculateDistances({
    required List<LatLng> latLng,
  }) = _CalculateDistances;

  const factory ShipmentEvent.drawPolyLines({
    required List<LatLng> latLng,
  }) = _DrawPolyLines;
}
