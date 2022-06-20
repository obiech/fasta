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
