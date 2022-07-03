import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fasta/models/otp.dart';
import 'package:fasta/rider_app/auth/repository/arguments.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

abstract class AuthRider {
  ErrorOr<Unit> login({required String email, required String password});

  ErrorOr<OTP> register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber});

  ErrorOr<Unit> registerAsDriver();

  ErrorOr<Unit> updateLicenceInfo(
      {required String expireDate, required String licenceNumber});

  ErrorOr<Unit> updateDriverVehicle({required VehicleArg arg});

  ErrorOr<Unit> uploadVehicleImage({required FormData image});
  ErrorOr<Unit> updateDriverLocation();
  ErrorOr<Unit> setAsActive();
  ErrorOr<Unit> setAsInActive();
}
