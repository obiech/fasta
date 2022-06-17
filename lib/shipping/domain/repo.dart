import 'package:dartz/dartz.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/infrastructure/repo.dart';
import 'package:fasta/shipping/repository/arg.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

abstract class ShipmentData {
  ErrorOr<LocationPointArg> createShipment({required CreateShipmentArg arg});

  ErrorOr<List<Trip>> getAllShipment({
    required String email,
  });

  ErrorOr<Unit> createTrip({required CreateTripArg arg});
  ErrorOr<List<Trip>> getAllDeliveries({required String email});
  ErrorOr<Unit> updateTripStatus({required String id, required String status});
}
