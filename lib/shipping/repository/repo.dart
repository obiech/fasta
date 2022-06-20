import 'package:dartz/dartz.dart';
import 'package:fasta/shipping/domain/entity/delivery.dart';
import 'package:fasta/shipping/domain/repo.dart';
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
  ErrorOr<List<Trip>> getAllDeliveries({required String email}) =>
      _repo.getAllDeliveries(email: email);
  ErrorOr<Unit> updateTripStatus(
          {required String id, required String status}) =>
      _repo.updateTripStatus(id: id, status: status);

  ErrorOr<Unit> acceptCompletedDelivery(String deliveryId) =>
      _repo.acceptCompletedDelivery(deliveryId);
  ErrorOr<Unit> rateDelivery(RateDeliveryArg arg) => _repo.rateDelivery(arg);
  ErrorOr<Unit> tipDelivery(String deliveryId, String amount) =>
      _repo.tipDelivery(deliveryId, amount);
}
