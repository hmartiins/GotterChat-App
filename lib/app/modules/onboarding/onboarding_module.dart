import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/modules/onboarding/presentation/pages/onboarding_page.dart';

class OnboardingModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const OnboardingPage());
  }
}
