import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/localizations_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Observer(
      builder: (context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Gotter Chat',
        theme: ThemeData(
          textTheme: GoogleFonts.spaceGroteskTextTheme(textTheme),
          primaryColor: Tp.colors.blue,
        ),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        locale: const Locale('pt'),
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('pt', 'BR'),
        ],
        localizationsDelegates: const [
          LocalizationsApp.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocale) =>
            supportedLocale.firstWhere(
          (e) =>
              e.languageCode == locale?.languageCode &&
              e.countryCode == locale?.countryCode,
          orElse: () => supportedLocale.first,
        ),
      ),
    );
  }
}
