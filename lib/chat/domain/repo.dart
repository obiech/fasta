import 'package:dartz/dartz.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
// import 'package:sendbird_sdk/sendbird_sdk.dart';

abstract class ChatRepo {
  ErrorOr<Unit> sendMessage(String message);
  ErrorOr<Unit> recieveMessage();
  // ErrorOr<OpenChannel> initialize();
  
}
