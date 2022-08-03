import 'package:dartz/dartz.dart';
import 'package:fasta/shipping/application/bloc/shipment_handler_bloc.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/domain/entity/nearby_rider.dart';
import 'package:fasta/shipping/domain/repo.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_dto.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class ShipmentRepository {
  final ShipmentData _repo;

  ShipmentRepository(this._repo);

  ErrorOr<LocationPointArg> createShipment({required CreateShipmentArg arg}) =>
      _repo.createShipment(arg: arg);

  ErrorOr<List<Trip>> getAllShipment({
    required String email,
  }) =>
      _repo.getAllShipment(email: email);

  ErrorOr<Unit> createTrip({required CreateTripArg arg}) =>
      _repo.createTrip(arg: arg);
  ErrorOr<List<DeliverySummary>> getAllDeliveries() =>_repo.getAllDeliveries();
  ErrorOr<DeliveryInvitation?> getPendingInvitations() =>
      _repo.getPendingInvitations();
  ErrorOr<Unit> updateTripStatus(
          {required String id, required String status}) =>
      _repo.updateTripStatus(id: id, status: status);

  ErrorOr<Unit> acceptCompletedDelivery(String deliveryId) =>
      _repo.acceptCompletedDelivery(deliveryId);
  ErrorOr<Unit> rateDelivery(RateDeliveryArg arg) => _repo.rateDelivery(arg);
  ErrorOr<Unit> tipDelivery(String deliveryId, String amount) =>
      _repo.tipDelivery(deliveryId, amount);
  ErrorOr<String> deliveryCost(DeliveryCostArg arg) => _repo.deliveryCost(arg);

  ErrorOr<Unit> finishDelivery(String deliveryInvitationId) =>
      _repo.finishDelivery(deliveryInvitationId);
  ErrorOr<Unit> rejectDelivery(String deliveryInvitationId) =>
      _repo.rejectDelivery(deliveryInvitationId);
  ErrorOr<Unit> acceptDelivery(String deliveryInvitationId) =>
      _repo.acceptDelivery(deliveryInvitationId);

  ErrorOr<DeliveryModel> getADelivery(
          String deliveryInvitationId, Owner owner) =>
      (owner == Owner.rider)
          ? _repo.getADeliveryAsDriver(deliveryInvitationId)
          : _repo.getADeliveryAsUser(deliveryInvitationId);
  ErrorOr<List<DeliverySummaryDTO>> getAllDeliveriesInvitations() =>
      _repo.getAllDeliveriesInvitations();

  ErrorOr<List<NearbyRider>> nearbyRiders(NearbyRider location) => _repo.nearbyRiders(location);
}
