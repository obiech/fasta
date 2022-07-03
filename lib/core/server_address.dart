class ServerAddress {
  const ServerAddress();
  static const String _addressPaystack = 'https://api.paystack.co';
  String get relevantPayStack => "$_addressPaystack/";

  static const String _address = 'https://fasta-api.herokuapp.com';
  static const String _type = 'api';
  String get relevant => "$_address/$_type/";
  String get domain => _address;

  String get token => tokenValue;
  set token(String token) => tokenValue = token;
}

String tokenValue = '';
