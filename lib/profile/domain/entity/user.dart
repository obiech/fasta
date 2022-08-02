class User {
  final String fullName, email, state, city, phoneNumber;
  final String? avatarUrl;
  final int id, userId;
  final bool emailVerified;

  const User(
      {required this.fullName,
      required this.email,
      required this.state,
      required this.city,
      required this.phoneNumber,
      this.avatarUrl,
      this.emailVerified = false,
      required this.userId,
      required this.id});
}
