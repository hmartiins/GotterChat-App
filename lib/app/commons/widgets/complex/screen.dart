import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class Screen extends StatelessWidget {
  const Screen({
    required this.child,
    this.appBar,
    super.key,
  });

  final Widget child;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Tp.themeColors.background,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          body: DecoratedBox(
            decoration: BoxDecoration(
              color: Tp.themeColors.background,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
