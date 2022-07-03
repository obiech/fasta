import 'package:bubble/bubble.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/profile/domain/entity/user.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/theming/size_config.dart';
import 'package:fasta/typography/font_weights.dart';
import 'package:fasta/typography/text_styles.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  static const route = '/ChatView';
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final TextEditingController _messageController = TextEditingController();
  late User? arg;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arg = (ModalRoute.of(context)?.settings.arguments as User);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FastaColors.primary2,
      appBar: AppBar(
        bottomOpacity: 0,
        toolbarHeight: 81.h,
        elevation: 0,
        centerTitle: false,
        backgroundColor: FastaColors.primary2,
        leading: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: 23.w,
              ),
            ),
            Expanded(
              child: IconButton(
                  icon: Icon(Icons.arrow_back_rounded,
                      size: 16.w, color: FastaColors.primary),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, RiderProfile.route);
          },
          child: Row(
            children: [
              CircleAvatar(
                  radius: 20.h,
                  backgroundImage: (arg?.avatarUrl == null)
                      ? Image.asset('assets/young.png').image
                      : Image.network(arg!.avatarUrl!).image),
              SizedBox(
                width: 10.w,
              ),
              RichText(
                  text: TextSpan(
                      text: arg?.fullName  ?? 'Joseph Aregbesola',
                      style: FastaTextStyle.hardLabel2,
                      children: [
                       const  TextSpan(
                        text: '\n'),
                    TextSpan(
                        text: arg?.userId.toString() ??
                            'Bike type & Plate Number',
                        style: FastaTextStyle.subtitle3)
                  ]))
            ],
          ),
        ),
        actions: [
          const CallIcon(
            iconColor: FastaColors.primary,
          ),
          SizedBox(
            width: 23.w,
          )
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(bottom: _data.isEmpty ? 0 : 70.h),
              controller: ScrollController(
                  initialScrollOffset: 1.screenHeight, keepScrollOffset: true),
              reverse: _data.isEmpty ? true : false,
              itemCount: _data.isEmpty ? 1 : _data.length,
              itemBuilder: (context, index) {
                if (_data.isEmpty) {
                  return GestureDetector(
                      child: MessageOptions(onPressed: () => setState(() {})));
                }
                return Column(
                  children: [
                    MessageTile(
                        message: _data[index].message,
                        sendByMe: _data[index].sendByMe,
                        time: _data[index].time),
                  ],
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextFormField(
              maxLines: null,
              controller: _messageController,
              decoration: InputDecoration(
                  fillColor: FastaColors.primary2,
                  border: const OutlineInputBorder(),
                  filled: true,
                  hintText: 'Type Your Message here',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _data.add(
                          _Message(
                              message: _messageController.text.trim(),
                              time: '${DateTime.now().hour}'
                                  ':'
                                  '${DateTime.now().minute}',
                              sendByMe: true),
                        );
                        _data.add(_Message(
                            message: 'This is an auto generated Message',
                            time: '${DateTime.now().hour}'
                                ':'
                                '${DateTime.now().minute}',
                            sendByMe: false));
                        _messageController.clear();
                        setState(() {});
                      },
                      icon:
                          const Icon(Icons.send, color: FastaColors.primary))),
            ),
          )
        ],
      ),
    );
  }
}

class MessageOptions extends StatelessWidget {
  final VoidCallback onPressed;
  const MessageOptions({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Start your conversation with Joseph',
            style: FastaTextStyle.subtitle2,
          ),
          SizedBox(
            height: 17.h,
          ),
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              GestureDetector(
                onTap: (() {
                  _data.add(_Message(
                      message: 'Have you arrived',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text(
                    'Have you arrived?',
                    style: FastaTextStyle.subtitle2
                        .copyWith(fontWeight: FastaFontWeight.semiBold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  _data.add(_Message(
                      message: 'Please wait a minute',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text('Please wait a minute',
                          style: FastaTextStyle.subtitle2
                              .copyWith(fontWeight: FastaFontWeight.semiBold))),
                ),
              ),
              GestureDetector(
                onTap: (() {
                  _data.add(_Message(
                      message: 'Where are you?',
                      time: '${DateTime.now().hour}'
                          ':'
                          '${DateTime.now().minute}',
                      sendByMe: true));
                  onPressed();
                }),
                child: Container(
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.h),
                      border: Border.all()),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  child: Center(
                      child: Text('Where are you?',
                          style: FastaTextStyle.subtitle2
                              .copyWith(fontWeight: FastaFontWeight.semiBold))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 70.h,
          )
        ],
      ),
    );
  }
}

class _Message {
  final String message, time;
  final bool sendByMe;

  _Message({required this.message, required this.time, required this.sendByMe});
}

List<_Message> _data = [];

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key? key,
    required this.message,
    required this.sendByMe,
    this.icon,
    required this.time,
  }) : super(key: key);
  final String message, time;
  final bool sendByMe;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Bubble(
      margin: BubbleEdges.only(
        bottom: 10.h,
        left: sendByMe ? 0.45.screenWidth : 5.w,
        right: sendByMe ? 5.w : 0.45.screenWidth,
      ),
      stick: true,
      radius: Radius.circular(10.h),
      nip: sendByMe ? BubbleNip.rightTop : BubbleNip.leftTop,
      color: FastaColors.primary,
      nipWidth: 5,
      nipHeight: 20.h,
      alignment: sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment:
            sendByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!sendByMe)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                time,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: sendByMe ? TextAlign.end : TextAlign.start,
              ),
            ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 15.h,
              ),
              child: Text(
                message,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: (sendByMe) ? TextAlign.end : TextAlign.start,
              ),
            ),
          ),
          if (sendByMe)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                time,
                style:
                    FastaTextStyle.subtitle2.copyWith(color: FastaColors.white),
                textAlign: sendByMe ? TextAlign.end : TextAlign.start,
              ),
            ),
        ],
      ),
    );
  }
}
