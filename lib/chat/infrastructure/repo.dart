import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fasta/api_client/domain.dart';
import 'package:fasta/chat/domain/entity/send_bird_user.dart';
import 'package:fasta/chat/domain/repo.dart';
import 'package:fasta/core/endpoints.dart';
import 'package:fasta/errrors/app_error.dart';
import 'package:fasta/secrets.dart';
import 'package:fasta/typedef.dart/typedefs.dart';
// import 'package:sendbird_sdk/sendbird_sdk.dart';

// class ChatImpl with ChannelEventHandler implements ChatRepo {
//   final ApiClient _client;
//   late final OpenChannel openChannel;
//   final sendbird = SendbirdSdk(appId: Secrets.SEND_BIRD_APP_ID);

//   ChatImpl(this._client);
//   @override
//   ErrorOr<Unit> recieveMessage() {
//     // TODO: implement recieveMessage
//     throw UnimplementedError();
//   }

//   @override
//   void onMessageReceived(BaseChannel channel, BaseMessage message) {
//     sendbird.addChannelEventHandler('identifier', this);
//   }

//   @override
//   ErrorOr<Unit> sendMessage(String message) async {
//     final params = UserMessageParams(message: 'message');
//     // if (openChannel.)
//     final preMessage =
//         openChannel.sendUserMessage(params, onCompleted: (msg, error) {
//       log(msg.sendingStatus.toString());
//     });
//     return Right(unit);
//   }

//   @override
//   ErrorOr<OpenChannel> initialize() async {
//     try {
//       final res = await _client.get(Endpoints.chatAndCall.getAccessToken);
//       final map = res.data['data'];
//       final user = SendBirdUser(map['userId'], map['accessToken']);
//       await sendbird.connect(user.userId, accessToken: user.accessToken);

//       // final params =
//       openChannel = await OpenChannel.createChannel(OpenChannelParams());

//       // openChannel.
//       return Right(openChannel);
//     } on Exception catch (e) {
//       return Left(AppError(e.toString()));
//     }
//   }
// }
