import 'package:dartz/dartz.dart';
import 'package:fasta/card/infrastructure/cardmodel.dart';

import '../../typedef.dart/typedefs.dart';

abstract class Cardrepo{
  ErrorOr<cardmodel> addcard(String cardNumber, String cardname, String cvv, String expiryMonth, String expiryYear);
}