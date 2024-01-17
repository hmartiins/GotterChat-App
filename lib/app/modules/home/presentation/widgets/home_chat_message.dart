import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class HomeChatMessage extends StatelessWidget {
  const HomeChatMessage({
    required this.name,
    required this.imageUrl,
    required this.hourOfLastMessage,
    required this.quantityOfUnreadMessages,
    super.key,
  });

  final String name;
  final String imageUrl;
  final String hourOfLastMessage;
  final String quantityOfUnreadMessages;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Tp.size.ref12),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    imageUrl,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    height: 12,
                    width: 12,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Tp.colors.green,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: Tp.size.ref10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: Tp.fontWeights.medium,
                      fontSize: 16,
                      color: Tp.colors.grey,
                    ),
                  ),
                  Text(
                    'henrique is typing...',
                    style: TextStyle(
                      fontWeight: Tp.fontWeights.regular,
                      fontSize: 16,
                      color: Tp.colors.grey50,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hourOfLastMessage,
                    style: TextStyle(
                      fontWeight: Tp.fontWeights.regular,
                      fontSize: 12,
                      color: Tp.colors.grey50,
                    ),
                  ),
                  SizedBox(height: Tp.size.ref4),
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Tp.colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        quantityOfUnreadMessages,
                        style: TextStyle(
                          color: Tp.colors.white,
                          fontWeight: Tp.fontWeights.regular,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
