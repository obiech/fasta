part of 'shipment_handler_bloc.dart';

@freezed
class ShipmentHandlerState with _$ShipmentHandlerState {
  // const factory  = _Initial;
  factory ShipmentHandlerState(
      {required String errorMessage,
      required AppState status,
      LocationPointArg? address,
      List<Trip>? allDelivery}) = _ShipmentHandlerState;
  factory ShipmentHandlerState.initial() =>
      ShipmentHandlerState(errorMessage: '', status: AppState.waiting);
}
