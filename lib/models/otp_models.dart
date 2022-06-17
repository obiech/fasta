import 'package:fasta/models/otp.dart';

class OTPModel extends OTP {
  OTPModel(int userID, int otpID) : super(userID, otpID);

  factory OTPModel.fromJson(Map<String, dynamic> json) {
    json = json['data'];
    return OTPModel(json['userId'], json['otpId']);
  }
}
