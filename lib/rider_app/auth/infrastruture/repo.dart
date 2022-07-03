import 'package:dio/dio.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/core/server_address.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/models/otp.dart';
import 'package:dartz/dartz.dart';
import 'package:fasta/models/otp_models.dart';
import 'package:fasta/rider_app/auth/domain/repo.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
import 'package:fasta/rider_app/auth/repository/arguments.dart';
import 'package:geolocator/geolocator.dart';

class AuthRiderImpl implements AuthRider {
  final ApiClient _client;

  AuthRiderImpl(this._client);
  @override
  ErrorOr<Unit> login({required String email, required String password}) async {
    try {
      Map<String, dynamic> body = {'email': email, 'password': password};
      final res = await _client.post(Endpoints.auth.login, body: body);
      const ServerAddress().token = res.data['meta']['token'];
      await updateDriverLocation();
      await setAsActive();
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<OTP> register(
      {required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber}) async {
    try {
      Map<String, dynamic> body = {
        'firstName': fullName.split(' ')[0],
        'lastName': fullName.split(' ')[1],
        'email': email,
        'password': password,
        'state': state,
        'city': city,
        'phoneNumber': phoneNumber,
      };
      final res = await _client.post(Endpoints.auth.register, body: body);
      await setAsActive();
      return Right(OTPModel.fromJson(res.data));
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> registerAsDriver() async {
    try {
      await _client.post(Endpoints.driverAuth.registerAsDriver);
      await updateDriverLocation();
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> updateDriverVehicle({required VehicleArg arg}) async {
    try {
      await _client.put(Endpoints.driverAuth.updateDriverVehicle,
          body: arg.toMap());
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> updateLicenceInfo(
      {required String expireDate, required String licenceNumber}) async {
    try {
      var date = expireDate.split('/')[2] +
          '-' +
          expireDate.split('/')[1] +
          '-' +
          expireDate.split('/')[0];
      Map<String, dynamic> body = {
        'licenceExpiryDate': date,
        'licenceNumber': licenceNumber,
      };
      await _client.put(Endpoints.driverAuth.updateLicenceInfo, body: body);
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> uploadVehicleImage({required FormData image}) async {
    try {
      await _client.post(Endpoints.driverAuth.uploadVehicleImages,
          body: {'image': image});
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> updateDriverLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      final body = {
        'longitude': position.longitude,
        'latitude': position.latitude
      };
      await _client.put(Endpoints.driverAuth.updateDriverLocation, body: body);
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> setAsActive() async {
    try {
      _client.put(Endpoints.driverAuth.setAsActive);
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }

  @override
  ErrorOr<Unit> setAsInActive() async {
    try {
      _client.put(Endpoints.driverAuth.setAsInActive);
      return const Right(unit);
    } catch (e) {
      return Left(AppError(e.toString()));
    }
  }
}
