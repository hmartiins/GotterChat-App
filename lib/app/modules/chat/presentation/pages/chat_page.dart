import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/top_bar_chat.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Tp.space.ref28),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarChat(),
          ],
        ),
      ),
    );
  }
}
