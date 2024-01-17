import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/modules/home/presentation/widgets/home_empty_messages.dart';
import 'package:gotter_chat/app/modules/home/presentation/widgets/home_tab_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Padding(
        padding: EdgeInsets.all(Tp.space.ref28),
        child: Column(
          children: [
            SizedBox(height: Tp.space.ref24),
            Row(
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
            SizedBox(height: Tp.size.ref16),
            const HomeTabBar(
              messageChild: HomeEmptyMessages(),
              groupChild: Text('teste2'),
            ),
          ],
        ),
      ),
    );
  }
}
