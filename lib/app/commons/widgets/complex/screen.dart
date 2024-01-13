import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class Screen extends StatelessWidget {
  const Screen({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Tp.themeColors.background,
        ),
        child: child,
      ),
    );
  }
}
