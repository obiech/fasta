import 'package:fasta/core/server_address.dart';

String get relevantPayStack => const ServerAddress().relevantPayStack;

String get relevant => const ServerAddress().relevant;

class Endpoints {
  static _PayStack get paystack => _PayStack();
  static _Auth get auth => _Auth();
  static _Profile get profile => _Profile();
  static _Shipment get shipment => _Shipment();
  static _Email get email => _Email();
  static _Password get password => _Password();
  static _PhoneNumber get phoneNumber => _PhoneNumber();
  static _DriverAuth get driverAuth => _DriverAuth();
}

class _PayStack {
  String get initialize => relevantPayStack + 'transaction/initialize';
  String verify(String reference) =>
      relevantPayStack + 'transaction/verify/:$reference';
}

class _Auth {
  String get login => relevant + 'auth/login';
  String get register => relevant + 'auth/register';
  String get forgotPassword => relevant + 'auth/login/forgot-password';
  String get resendOTP => relevant + 'auth/resend-otp';
  String get confirmOTP => relevant + 'auth/register/otp';
  String get forgotPasswordOTP => relevant + 'auth/login/forgot-password/otp';
  String getUserOTP(int userID, int otpID) =>
      relevant + 'auth/otp?userId=$userID&otpId=$otpID';
}

class _Shipment {
  String get createShipment => relevant + 'user/create_shipment';
  String get createTrip => relevant + 'user/create_trip';
  String get updateTripStatus => relevant + 'user/updateTripStatus';
  String getAllDeliveries(String email) =>
      relevant + 'user/listshipments/${email.trim()}';
  String getAllShipment(String email) =>
      relevant + 'user/listshipments/${email.trim()}';
}

class _Profile {
  String get getProfile => relevant + 'user';
  String get updateProfile => relevant + 'user/profile';
  String get uploadUserPhotot => relevant + 'user/profile/avatar';
}

class _User {
  String get getUserInfo => relevant + 'user';
}

class _Password {
  String get changePassword => relevant + 'user/change-password';
}

class _Email {
  String get setEmail => relevant + 'user/set-email';
  String get setEmailOTP => relevant + 'user/set-email/otp';
  String get changeEmail => relevant + 'user/change-email';
  String get changEmailOTP => relevant + 'user/change-email/otp';
  String get newEmailConfirmOTP => relevant + 'user/change-email/confirm/otp';
}

class _PhoneNumber {
  String get changePhoneNumber => relevant + 'user/change-phone-number';
  String get phoneNumberOTP => relevant + 'user/change-phone-number/otp';
  String get newPhoneNumberConfirmOTP =>
      relevant + 'user/change-phone-number/confirm/otp';
}

class _DriverAuth {
  String get registerAsDriver => relevant + 'driver/register';
  String get updateLicenceInfo => relevant + 'driver/licence-info';
  String get updateDriverVehicle => relevant + 'driver/vehicle';
  String get uploadVehicleImages => relevant + 'driver/vehicle/images';
  String get deleteVehicleImage => relevant + 'driver/vehicle/images/:imagesId';
}
