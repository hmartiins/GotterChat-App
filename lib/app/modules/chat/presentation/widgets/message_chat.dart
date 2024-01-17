import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/enums/message_type.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class MessageChat extends StatelessWidget {
  const MessageChat({
    required this.message,
    required this.type,
    this.time,
    super.key,
  });

  final double? time;
  final String message;
  final MessageType type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        type == MessageType.sent ? Expanded(child: Container()) : Container(),
        Column(
          crossAxisAlignment: type == MessageType.sent
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: type == MessageType.sent
                      ? Tp.colors.grey70
                      : Tp.colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: type == MessageType.sent
                        ? Radius.circular(Tp.size.ref8)
                        : const Radius.circular(0),
                    topRight: type == MessageType.sent
                        ? const Radius.circular(0)
                        : Radius.circular(Tp.size.ref8),
                    bottomLeft: Radius.circular(Tp.size.ref8),
                    bottomRight: Radius.circular(Tp.size.ref8),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(Tp.size.ref14),
                  child: Text(
                    message,
                    style: TextStyle(
                      color: type == MessageType.sent
                          ? Tp.colors.white10
                          : Tp.colors.black,
                      fontWeight: Tp.fontWeights.regular,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            time != null
                ? Column(
                    children: [
                      SizedBox(height: Tp.size.ref4),
                      Text(
                        '15:19 PM',
                        style: TextStyle(
                          color: Tp.colors.grey50,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
