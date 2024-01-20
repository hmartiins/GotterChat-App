import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/modules/chat/presentation/pages/chat_page.dart';

class ChatModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const ChatPage());
  }
}
