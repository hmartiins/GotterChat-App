import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp.router(
      title: 'Gotter Chat',
      theme: ThemeData(
        textTheme: GoogleFonts.spaceGroteskTextTheme(textTheme),
        primaryColor: Tp.colors.blue,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
