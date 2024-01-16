import 'package:flutter/material.dart';
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
            SizedBox(height: Tp.space.ref12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gotter',
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
            DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: Column(
                children: [
                  DefaultTabController(
                    initialIndex: 1,
                    length: 2,
                    child: Column(
                      children: [
                        TabBar(
                          tabs: const <Widget>[
                            Tab(
                              text: 'Messages',
                            ),
                            Tab(
                              text: 'Group',
                            ),
                          ],
                          labelColor: Colors.cyan,
                          indicator: const UnderlineTabIndicator(),
                          indicatorColor: Tp.colors.gray70,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 22.0,
                            right: 22.0,
                            top: 16,
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 260,
                            child: const TabBarView(
                              children: [
                                Text('Especificações'),
                                Text('Especificações'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
