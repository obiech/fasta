class ProfileArg {
  final String? fullName, email, state, city, phoneNumber;
  const ProfileArg(
      {this.fullName, this.email, this.state, this.city, this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'fullname': fullName,
      'email': email,
      'state': state,
      'city': city,
      'phone_num': phoneNumber
    };
  }
}
