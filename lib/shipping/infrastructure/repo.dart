import 'dart:developer';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/constants.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/entity/delivery_invitations.dart';
import 'package:fasta/shipping/domain/entity/delivery_model.dart';
import 'package:fasta/shipping/domain/repo.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_dto.dart';
import 'package:fasta/shipping/infrastructure/models/delivery_invitation_dto.dart';
import 'package:fasta/shipping/infrastructure/models/trip_dto.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class LocationPointArg {
  final String to, from;

  LocationPointArg(this.to, this.from);
}

class ShipmentDataImpl implements ShipmentData {
  final ApiClient _client;

  ShipmentDataImpl(this._client);
  @override
  ErrorOr<LocationPointArg> createShipment(
      {required CreateShipmentArg arg}) async {
    try {
      // String secureImage = await _uploadPictureToCloudinary(arg.image);

      final body = await arg.toMap();
      // final body  = await arg.copyWith(secureImage).toMap();
      final res =
          await _client.post(Endpoints.delivery.createDelivery, body: body);
      return Right(LocationPointArg(arg.pickUpAddress, arg.deliveryPoint));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  Future<String> _uploadPictureToCloudinary(String imagePath) async {
    final CloudinaryPublic cloudinary = CloudinaryPublic(
        Constants.cloudName, Constants.uploadPresent,
        cache: true);
    CloudinaryResponse response = await cloudinary.uploadFile(
        CloudinaryFile.fromFile(imagePath,
            resourceType: CloudinaryResourceType.Image));
    return response.secureUrl;
  }

  @override
  ErrorOr<List<Trip>> getAllShipment({required String email}) async {
    try {
      final res = await _client.get(Endpoints.shipment.getAllShipment(email));
      return Right(
          (res.data['data'] as List).map((e) => TripDTO.fromJson(e)).toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> createTrip({required CreateTripArg arg}) async {
    try {
      final res = await _client.get(Endpoints.shipment.createTrip);
      return Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> acceptDelivery(String deliveryInvitationId) async {
    try {
      log(deliveryInvitationId);
      await _client
          .put(Endpoints.driverDelivery.acceptDelivery(deliveryInvitationId));
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<DeliveryModel> getADeliveryAsDriver(
      String deliveryInvitationId) async {
    try {
      log(deliveryInvitationId);
      final res = await _client
          .get(Endpoints.driverDelivery.getADelivery('2251799813685271'));

      return Right(DeliveryDTO.fromMap(res.data['data']));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<DeliveryModel> getADeliveryAsUser(String deliveryInvitationId) async {
    try {
      final res = await _client
          .get(Endpoints.delivery.getADelivery(deliveryInvitationId.trim()));
      return Right(DeliveryDTO.fromMap(res.data['data']));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> rejectDelivery(String deliveryInvitationId) async {
    try {
      await _client
          .put(Endpoints.driverDelivery.rejectDelivery(deliveryInvitationId));
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> finishDelivery(String deliveryInvitationId) async {
    try {
      await _client
          .put(Endpoints.driverDelivery.acceptDelivery(deliveryInvitationId));
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<DeliverySummaryDTO>> getAllDeliveriesInvitations() async {
    try {
      final res =
          await _client.get(Endpoints.driverDelivery.allDeliveryInvitations);
      return Right(
          (res.data['data'] as List).map((e) => DeliverySummaryDTO.fromMapRider(e)).toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<List<DeliverySummary>> getAllDeliveries() async {
    try {
      final res =
          await _client.get(Endpoints.delivery.getAllDeliveries);
      return Right(
          (res.data['data'] as List).map((e) => DeliverySummaryDTO.fromMap(e)).toList());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<DeliveryInvitation?> getPendingInvitations() async {
    try {
      final res = await _client.get(Endpoints.driverDelivery.pendingDelivery);
      if ((res.data['data'] as List).isEmpty) return const Right(null);
      return Right(DeliveryInvitationDTO.fromMap(res.data));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> updateTripStatus(
      {required String id, required String status}) async {
    try {
      await _client.put(Endpoints.shipment.updateTripStatus,
          body: {'id': id, 'status': status});
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> acceptCompletedDelivery(String deliveryId) async {
    try {
      await _client.put(Endpoints.delivery.acceptCompletedDelivery(deliveryId));
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> rateDelivery(RateDeliveryArg arg) async {
    try {
      await _client.put(Endpoints.delivery.rateDelivery(arg.deliveryId), body: {
        'rating': arg.rating,
        'comment': arg.comment,
      });
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> tipDelivery(String deliveryId, String amount) async {
    try {
      await _client.put(Endpoints.delivery.tipDriver(deliveryId), body: {
        'amount': amount,
      });
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<String> deliveryCost(DeliveryCostArg arg) async {
    try {
      final res = await _client.post(Endpoints.delivery.deliveryCost,
          body: arg.toMap());
      return Right(res.data['data']['cost'].toString());
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
