import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';

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
            DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Tp.colors.grey10,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TabBar(
                      tabs: [
                        Tab(
                          text: intl(context, 'home.tab-messages'),
                        ),
                        Tab(
                          text: intl(context, 'home.tab-group'),
                        ),
                      ],
                      labelColor: Tp.colors.white,
                      indicator: BoxDecoration(
                        color: Tp.colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      indicatorColor: Tp.colors.gray70,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    child: const TabBarView(
                      children: [
                        Text('Gotter'),
                        Text('Gotter'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
