import 'dart:developer';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/constants.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/repo.dart';
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
      String secureImage = await _uploadPictureToCloudinary(arg.image);

      final res = await _client.post(Endpoints.shipment.createShipment,
          body: arg.copyWith(secureImage).toMap());
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
  ErrorOr<List<Trip>> getAllDeliveries({required String email}) async {
    try {
      final res = await _client.get(Endpoints.shipment.getAllDeliveries(email));
      return Right(
          (res.data['data'] as List).map((e) => TripDTO.fromJson(e)).toList());
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
      return Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
