part of 'shipment_bloc.dart';

@freezed
class ShipmentState with _$ShipmentState {
  const factory ShipmentState.initial() = _Initial;
  const factory ShipmentState.currentLocation({
    Position? currentPosition,
    String? errorMessage,
  }) = _CurrentLocation;
  const factory ShipmentState.currentAddress({
    required String currentAddress,
    String? errorMessage,
  }) = _CurrentAddress;

  const factory ShipmentState.getMarkers({
    required Set<Marker> markers,
    String? errorMessage,
  }) = _GetMarkers;
  const factory ShipmentState.geographicLocation(
      {required GeographicLocation geographicLocation}) = _GeographicLocation;

  const factory ShipmentState.calculatedDistance(
      {@Default('0.00') String distance}) = _CalculatedDistance;

  const factory ShipmentState.polyLineMapForDrawing(
      {required Map<PolylineId, Polyline> polyies}) = _PolyLineMapForDrawing;
}
