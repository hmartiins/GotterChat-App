import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/commons/widgets/form/app_button.dart';
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
            HomeTabBar(
              messageChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Tp.size.ref110,
                  ),
                  SvgPicture.asset('assets/home/chat.svg'),
                  SizedBox(
                    height: Tp.size.ref8,
                  ),
                  Text(
                    'No chat found\nStart a new One?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: Tp.fontWeights.regular,
                      fontSize: 16,
                      color: Tp.colors.grey20,
                    ),
                  ),
                  SizedBox(
                    height: Tp.size.ref64,
                  ),
                  AppButton(
                    onPressed: () {},
                    width: 15,
                    label: 'Enable Public URL',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Tp.size.ref16),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontWeight: Tp.fontWeights.regular,
                        fontSize: 16,
                        color: Tp.colors.grey20,
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Import an address',
                        style: TextStyle(
                          color: Tp.colors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              groupChild: const Text('teste2'),
            ),
          ],
        ),
      ),
    );
  }
}
