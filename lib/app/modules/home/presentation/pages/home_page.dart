import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/modules/home/presentation/widgets/home_chat_message.dart';
import 'package:gotter_chat/app/modules/home/presentation/widgets/home_tab_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Tp.space.ref28),
        child: Column(
          children: [
            SizedBox(height: Tp.space.ref24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Tp.space.ref28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    intl(context, 'application-name'),
                    style: TextStyle(
                      fontWeight: Tp.fontWeights.bold,
                      fontSize: 22,
                      color: Tp.colors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Tp.size.ref16),
            HomeTabBar(
              messageChild: Padding(
                padding: EdgeInsets.symmetric(vertical: Tp.size.ref12),
                child: const Column(
                  children: [
                    HomeChatMessage(
                      name: 'Henrique',
                      imageUrl: 'assets/home/char.png',
                      hourOfLastMessage: '12:00',
                      quantityOfUnreadMessages: '3',
                    ),
                  ],
                ),
              ),
              groupChild: const Text('teste2'),
            ),
          ],
        ),
      ),
    );
  }
}
