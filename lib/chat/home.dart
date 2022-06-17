import 'package:fasta/chat/domain/entity/message.dart';
import 'package:fasta/chat/widgets/message_options.dart';
import 'package:fasta/chat/widgets/message_tile.dart';
import 'package:fasta/colors/colors.dart';
import 'package:fasta/shipping/rider_profile.dart';
import 'package:fasta/shipping/widgets/call_icon.dart';
import 'package:fasta/theming/size_config.dart';
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
                  backgroundImage: Image.asset('assets/2.0x/young.png').image),
              SizedBox(
                width: 10.w,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Joseph Aregbesola\n',
                      style: FastaTextStyle.hardLabel2,
                      children: [
                    TextSpan(
                        text: 'Bike type & Plate Number',
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
                      child: MessageOptions(
                          onPressed: () => setState(() {}), data: _data));
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
                          Message(
                              message: _messageController.text.trim(),
                              time: '${DateTime.now().hour}'
                                  ':'
                                  '${DateTime.now().minute}',
                              sendByMe: true),
                        );
                        _data.add(Message(
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

List<Message> _data = [];
