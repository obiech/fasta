class ProfileArg {
  final String? fullName, state, city, country;
  const ProfileArg({this.fullName, this.state, this.city, this.country});

  Map<String, dynamic> toMap() {
    return {
      'firstName': fullName?.split(' ')[0],
      'lastName': fullName?.split(' ')[1],
      'state': state,
      'city': city,
      'country': country
    };
  }
}

class VerifyEmailArg {
  final String otpId;
  final String otpCode;
  final String userId;
  const VerifyEmailArg(this.otpCode, this.otpId, this.userId);

  Map<String, dynamic> toMap() {
    return {'otpId': otpId, 'otpCode': otpCode};
  }
}
