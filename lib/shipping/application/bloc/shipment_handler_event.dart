part of 'shipment_handler_bloc.dart';

@freezed
class ShipmentHandlerEvent with _$ShipmentHandlerEvent {
  const factory ShipmentHandlerEvent.started() = _Started;

  const factory ShipmentHandlerEvent.createShipment(
      {required CreateShipmentArg arg}) = _CreateShipment;
  const factory ShipmentHandlerEvent.createTrip({required CreateTripArg arg}) =
      _CreateTrip;
  const factory ShipmentHandlerEvent.getAllDeliveries({required String email}) =
      _GetAllDeliveries;
  const factory ShipmentHandlerEvent.getAllShipment({required String email}) =
      _GetAllShipment;
  const factory ShipmentHandlerEvent.updateTripStatus(
      {required String id, required String status}) = _UpdateTripStatus;

  const factory ShipmentHandlerEvent.acceptCompletedDelivery(
      String deliveryId) = _AcceptCompletedDelivery;
  const factory ShipmentHandlerEvent.rateDelivery(RateDeliveryArg arg) =
      _RateDelivery;
  const factory ShipmentHandlerEvent.tipDelivery(
      String deliveryId, String amount) = _TipDelivery;
}
