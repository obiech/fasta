part of 'auth_rider_bloc.dart';

@freezed
class AuthRiderEvent with _$AuthRiderEvent {
  const factory AuthRiderEvent.started() = _Started;
  const factory AuthRiderEvent.login({required String email, required String password}) = __Login;
  const factory AuthRiderEvent.register({required String fullName,
      required String email,
      required String password,
      required String state,
      required String city,
      required String phoneNumber}) = _Register;
  const factory AuthRiderEvent.registerAsDriver() = _RegisterAsDriver;
  const factory AuthRiderEvent.updateLicenceInfo({required String expireDate, required String licenceNumber}) = _UpdateLicenceInfo;
  const factory AuthRiderEvent.updateDriverVehicle({required VehicleArg arg}) = _UpdateDriverVehicle;
  const factory AuthRiderEvent.uploadVehicleImage({required FormData image}) = _UploadVehicleImage;
}