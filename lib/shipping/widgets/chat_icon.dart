import 'package:fasta/colors/colors.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/shipping/chat.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:flutter/material.dart';

class ChatIcon extends StatelessWidget {
  const ChatIcon(this.user,{Key? key,}) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 57.h,
      child: Center(
        child: IconButton(
          icon: Icon(
            Icons.message_outlined,
            size: 20.h,
          ),
          onPressed: () {
            Navigator.pushNamed(
                context, ChatView.route, arguments: user);
          },
        ),
      ),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: FastaColors.grey5,
      ),
    );
  }
}