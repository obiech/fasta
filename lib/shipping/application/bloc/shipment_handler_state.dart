part of 'shipment_handler_bloc.dart';

@freezed
class ShipmentHandlerState with _$ShipmentHandlerState {
  // const factory  = _Initial;
  factory ShipmentHandlerState(
      {required String errorMessage,
      required AppState status,
      LocationPointArg? address,
      DeliveryInvitation? pendingInvitations,
      String? deliveryEstimate,
      DeliveryModel? delivery,
      @Deprecated('replace with deliverySummary')
      List<DeliverySummary>? deliverySummary,
      DeliveryInvitation? invitationEvent,
      DeliverySummary? newDeliveryEvent,
      List<DeliverySummaryDTO>? allDelivery}) = _ShipmentHandlerState;
  factory ShipmentHandlerState.initial() =>
      ShipmentHandlerState(errorMessage: '', status: AppState.waiting, deliveryEstimate: '0');
}
