import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Center(
        child: IconButton(
          onPressed: () {
            Modular.to.navigate('/');
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
