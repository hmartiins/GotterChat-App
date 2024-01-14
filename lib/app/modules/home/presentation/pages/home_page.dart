import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          Modular.to.navigate('/onboarding');
        },
        child: const Text('Home is here!'),
      )),
    );
  }
}
