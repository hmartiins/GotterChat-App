import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/enums/message_type.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/message_chat.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/top_bar_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Tp.space.ref28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBarChat(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Tp.size.ref16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const MessageChat(
                      message: 'Bibiane é linda',
                      time: 15.19,
                      type: MessageType.received,
                    ),
                    SizedBox(height: Tp.size.ref8),
                    const MessageChat(
                      message:
                          'O zezé também O zezé também O zezé também O zezé também',
                      time: 15.19,
                      type: MessageType.sent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
