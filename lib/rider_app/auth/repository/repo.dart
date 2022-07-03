
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fasta/models/otp.dart';
// import 'package:fasta/rider_app/auth/domain/entity/otp.dart';
import 'package:fasta/rider_app/auth/domain/repo.dart';
import 'package:fasta/rider_app/auth/repository/arguments.dart';
import 'package:fasta/typedef.dart/typedefs.dart';

class AuthRiderRepository {
  final AuthRider _repo;

  AuthRiderRepository(this._repo);

  ErrorOr<OTP> register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber})=>
      _repo.register(fullName: fullName, email: email, password: password, state: state, city: city, phoneNumber: phoneNumber);

  ErrorOr<Unit> login({required String email, required String password})=> _repo.login(email: email, password: password);
  ErrorOr<Unit> registerAsDriver() =>
      _repo.registerAsDriver();
ErrorOr<Unit> updateLicenceInfo(
      {required String expireDate, required String licenceNumber}) =>
      _repo.updateLicenceInfo(expireDate: expireDate, licenceNumber: licenceNumber);
  ErrorOr<Unit> updateDriverVehicle({required VehicleArg arg})=>
      _repo.updateDriverVehicle(arg: arg);
   ErrorOr<Unit> uploadVehicleImage({required FormData image})=>
      _repo.uploadVehicleImage(image: image);
   ErrorOr<Unit> updateDriverLocation()=>
      _repo.updateDriverLocation();
  ErrorOr<Unit> setAsInActive()=>
      _repo.setAsInActive();
  ErrorOr<Unit> setAsActive()=>
      _repo.setAsActive();
}
