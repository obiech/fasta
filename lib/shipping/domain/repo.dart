import 'package:dartz/dartz.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/domain/entity/nearby_rider.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_dto.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

abstract class ShipmentData {
  ErrorOr<LocationPointArg> createShipment({required CreateShipmentArg arg});

  ErrorOr<List<Trip>> getAllShipment({
    required String email,
  });

  ErrorOr<Unit> createTrip({required CreateTripArg arg});
  ErrorOr<List<DeliverySummary>> getAllDeliveries();
  ErrorOr<DeliveryInvitation?> getPendingInvitations();
  ErrorOr<Unit> updateTripStatus({required String id, required String status});
  ErrorOr<Unit> acceptCompletedDelivery(String deliveryId);
  ErrorOr<Unit> rateDelivery(RateDeliveryArg arg);
  ErrorOr<Unit> tipDelivery(String deliveryId, String amount);
  ErrorOr<String> deliveryCost(DeliveryCostArg arg);
  ErrorOr<Unit> finishDelivery(String deliveryInvitationId);
  ErrorOr<Unit> rejectDelivery(String deliveryInvitationId);
  ErrorOr<Unit> acceptDelivery(String deliveryInvitationId);
  ErrorOr<DeliveryModel> getADeliveryAsDriver(String deliveryInvitationId);
  ErrorOr<DeliveryModel> getADeliveryAsUser(String deliveryInvitationId);
  ErrorOr<List<DeliverySummaryDTO>> getAllDeliveriesInvitations();
  ErrorOr<List<NearbyRider>> nearbyRiders(NearbyRider location);
}
