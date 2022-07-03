import 'package:fasta/core/server_address.dart';
import 'package:fasta/wallet/repository/args.dart';

String get relevantPayStack => const ServerAddress().relevantPayStack;

String get relevant => const ServerAddress().relevant;

String optionalParams(TransactionArg arg) =>
    '?page=${arg.page}&order=${arg.order}'
    '&status=${arg.status}&limit=${arg.limit}&startDate=${arg.startDate}'
    '&endDate=${arg.endDate}';

class Endpoints {
  static _PayStack get paystack => _PayStack();
  static _Auth get auth => _Auth();
  static _Profile get profile => _Profile();
  static _Shipment get shipment => _Shipment();
  static _Email get email => _Email();
  static _Password get password => _Password();
  static _PhoneNumber get phoneNumber => _PhoneNumber();
  static _DriverAuth get driverAuth => _DriverAuth();
  static _Wallet get wallet => _Wallet();
  static _Delivery get delivery => _Delivery();
  static _DriverDelivery get driverDelivery => _DriverDelivery();
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
  String get uploadUserPhoto => relevant + 'user/profile/avatar';
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
  String get resendEmail => relevant + 'user/set-email';
  String get verifyEmail => relevant + 'user/set-email/otp';
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
  String get updateDriverLocation => relevant + 'driver/location';
  String deleteVehicleImage(String imageID) =>
      relevant + 'driver/vehicle/images/:$imageID';
  String get setAsActive => relevant + 'driver/status/online';
  String get setAsInActive => relevant + 'driver/status/offline';
}

class _Wallet {
  String get userBalance => relevant + 'wallet/balance';
  String get getDepositLink => relevant + 'wallet/deposit-link';
  String get verifyPaystackLink => relevant + 'transaction/paystack/callback';
  String allTransactions(TransactionArg arg) =>
      relevant + 'wallet/transactions${optionalParams(arg)}';

  String getATransaction(String transactionID) =>
      relevant + 'wallet/transaction/:$transactionID';

  String getDepositTransactions(TransactionArg arg) =>
      relevant + 'wallet/transactions/deposit${optionalParams(arg)}';

  String getWithdrawalTransactions(TransactionArg arg) =>
      relevant + 'wallet/transactions/withdrawal${optionalParams(arg)}';

  String getAllEarnings(TransactionArg arg) =>
      relevant + 'wallet/earnings${optionalParams(arg)}';

  String get getTotalEarnings => relevant + 'wallet/earnings/total';

  String get getWithdrawalOtp => relevant + 'wallet/withdraw/bank/otp';
  String get initialWithdrawal => relevant + 'wallet/withdraw/bank/initiate';
  String get bankList => relevant + 'wallet/banks-info';
  String get resolveAccountNumber => relevant + 'wallet/resolve-account-number';
}

class _Delivery {
  String get createDelivery => relevant + 'delivery';
  String acceptCompletedDelivery(String deliveryId) =>
      relevant + 'delivery/$deliveryId/accept-finish';
  String rateDelivery(String deliveryId) =>
      relevant + 'delivery/$deliveryId/rate';
  String get deliveryCost => relevant + 'delivery/estimated-cost';
  String tipDriver(String deliveryId) => relevant + 'delivery/$deliveryId/tip';
  String getADelivery(String deliveryId) => relevant + 'delivery/$deliveryId';
  String get getAllDeliveries => relevant + 'delivery';
}

class _DriverDelivery {
  String get pendingDelivery =>
      relevant + 'delivery/delivery-invitations/pending';
  String acceptDelivery(String deliveryInvitationId) =>
      relevant + 'delivery/delivery-invitations/$deliveryInvitationId/accept';
  String rejectDelivery(String deliveryInvitationId) =>
      relevant + 'delivery/delivery-invitations/$deliveryInvitationId/reject';
  String finishDelivery(String deliveryId) =>
      relevant + 'delivery/$deliveryId/driver-finish';
  String get allDeliveryInvitations =>
      relevant + 'delivery/delivery-invitations/all';

  String getADelivery(String deliveryId) =>
      relevant + 'delivery/$deliveryId/as-driver';
}
