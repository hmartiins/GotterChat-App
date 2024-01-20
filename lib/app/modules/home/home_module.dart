import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/modules/chat/chat_module.dart';
import 'package:gotter_chat/app/modules/home/presentation/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r
      ..child('/', child: (context) => const HomePage())
      ..module('/chat', module: ChatModule());
  }
}
