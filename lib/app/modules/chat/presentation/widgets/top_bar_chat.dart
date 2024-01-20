import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/ui/user_avatar.dart';

class TopBarChat extends StatelessWidget {
  const TopBarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Tp.colors.grey70,
              ),
              onPressed: () {
                Modular.to.navigate('/home');
              },
            ),
            const UserAvatar(
              imageUrl: 'assets/home/char.png',
              isOnline: true,
              imageWidth: 40,
              imageHeight: 40,
              onlineSize: 8,
            ),
            SizedBox(width: Tp.size.ref10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Henrique',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: Tp.fontWeights.semibold,
                    color: Tp.colors.grey,
                  ),
                ),
                Text(
                  'typing...',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: Tp.fontWeights.regular,
                    color: Tp.colors.grey50,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.more_horiz,
                color: Tp.colors.grey70,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
