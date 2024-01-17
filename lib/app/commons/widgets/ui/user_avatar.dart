import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    required this.imageUrl,
    this.isOnline = false,
    this.imageWidth = 50.0,
    this.imageHeight = 50.0,
    this.onlineSize = 12,
    super.key,
  });
  final String imageUrl;
  final bool isOnline;

  final double imageWidth;
  final double imageHeight;
  final double onlineSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Image.asset(
          imageUrl,
          width: imageWidth,
          height: imageHeight,
        ),
        isOnline
            ? SizedBox(
                height: onlineSize,
                width: onlineSize,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Tp.colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
