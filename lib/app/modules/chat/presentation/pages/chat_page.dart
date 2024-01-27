import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/entities/message_entity.dart';
import 'package:gotter_chat/app/commons/enums/message_type.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/input_message_chat.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/message_chat.dart';
import 'package:gotter_chat/app/modules/chat/presentation/widgets/top_bar_chat.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatMessage {
  ChatMessage({
    required this.message,
    required this.type,
    required this.time,
  });
  final String message;
  final String time;
  final MessageType type;
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final channel = WebSocketChannel.connect(
    Uri.parse(
      'ws://localhost:3333/api/v1/ws/e059d271-2a32-43a2-b376-e8272415923a',
    ),
  );

  final List<ChatMessage> messagesRecived = [];

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Tp.space.ref28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBarChat(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Tp.size.ref16),
                child: StreamBuilder(
                  stream: channel.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final jsonMap = jsonDecode(snapshot.data.toString())
                          as Map<String, dynamic>;
                      final contentMap =
                          jsonMap['content'] as Map<String, dynamic>;

                      final messageEntity = MessageEntity(
                        content: Content(
                          message: contentMap['message'] as String,
                          datetime: contentMap['datetime'] as String,
                        ),
                        id: jsonMap['id'] as String,
                        roomId: jsonMap['roomId'] as String,
                        userId: jsonMap['userId'] as String,
                      );

                      messagesRecived.add(
                        ChatMessage(
                          message: messageEntity.content.message,
                          time: messageEntity.content.datetime,
                          type: MessageType.received,
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: messagesRecived.length,
                      itemBuilder: (context, index) {
                        final dateTime =
                            DateTime.parse(messagesRecived[index].time);

                        return Column(
                          children: [
                            MessageChat(
                              message: messagesRecived[index].message,
                              time:
                                  '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
                              type: messagesRecived[index].type,
                            ),
                            SizedBox(height: Tp.size.ref12),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            InputMessageChat(
              onSubmitted: (message) {
                channel.sink.add(message);

                messagesRecived.add(
                  ChatMessage(
                    message: message,
                    time: DateTime.now().toString(),
                    type: MessageType.sent,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
