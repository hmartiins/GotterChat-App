import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/modules/home/home_module.dart';
import 'package:gotter_chat/app/modules/onboarding/presentation/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  void routes(RouteManager r) {
    r
      ..child('/', child: (context) => const OnboardingPage())
      ..module('/home', module: HomeModule());
  }
}
