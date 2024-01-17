import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({
    required this.messageChild,
    required this.groupChild,
    super.key,
  });

  final Widget messageChild;
  final Widget groupChild;

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  int _selectedTabbar = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Tp.space.ref28),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Tp.colors.grey10,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TabBar(
                onTap: (index) => setState(() {
                  _selectedTabbar = index;
                }),
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
          ),
          Builder(
            builder: (_) {
              if (_selectedTabbar == 0) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: widget.messageChild,
                );
              } else {
                return widget.groupChild;
              }
            },
          ),
        ],
      ),
    );
  }
}
