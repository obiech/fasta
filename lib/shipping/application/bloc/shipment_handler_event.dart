part of 'shipment_handler_bloc.dart';

@freezed
class ShipmentHandlerEvent with _$ShipmentHandlerEvent {
  const factory ShipmentHandlerEvent.started() = _Started;

  const factory ShipmentHandlerEvent.createShipment(
      {required CreateShipmentArg arg}) = _CreateShipment;
  const factory ShipmentHandlerEvent.createTrip({required CreateTripArg arg}) =
      _CreateTrip;
  const factory ShipmentHandlerEvent.getAllDeliveries() =
      _GetAllDeliveries;
  const factory ShipmentHandlerEvent.getAllDeliveriesPendingInvitations() =
      _GetAllDeliveriesPendingInvitations;
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
  const factory ShipmentHandlerEvent.deliveryCost(DeliveryCostArg arg) =
      _DeliveryCost;
  const factory ShipmentHandlerEvent.getPendingDelivery() =
      _GetPendingDelivery;
  const factory ShipmentHandlerEvent.acceptDelivery(String deliveryId) =
      _AcceptDelivery;
  const factory ShipmentHandlerEvent.rejectDelivery(String deliveryId) =
      _RejectDelivery;
  const factory ShipmentHandlerEvent.finishDelivery(String deliveryId) =
      _FinishDelivery;
  const factory ShipmentHandlerEvent.getADelivery(String deliveryId, Owner owner) =
      _GetADelivery;
  const factory ShipmentHandlerEvent.deliveryInvitations(DeliveryInvitation invitation) =
      _DeliveryInvitations;
  const factory ShipmentHandlerEvent.getNearbyRiders(NearbyRider location) =
      _GetNearbyRiders;
}
