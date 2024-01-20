import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/modules/onboarding/onboarding_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/', module: OnboardingModule());
  }
}
