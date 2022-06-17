class Transaction {
  final String reference, accessCode, authorizationUrl;

  Transaction(
      {required this.reference,
      required this.accessCode,
      required this.authorizationUrl});
}
