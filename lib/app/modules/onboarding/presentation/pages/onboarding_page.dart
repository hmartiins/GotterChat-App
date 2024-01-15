import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gotter_chat/app/commons/adapters/localizations/translate_app.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';
import 'package:gotter_chat/app/commons/widgets/form/app_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Tp.size.ref64),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Tp.size.ref24),
              child: Text(
                intl(context, 'onboarding.title'),
                style: TextStyle(
                  fontSize: Tp.size.ref32,
                  fontWeight: FontWeight.w600,
                  color: Tp.colors.blue,
                ),
              ),
            ),
            Expanded(child: Container()),
            Image.asset(
              Tp.assets.onboarding,
              width: double.infinity,
            ),
            Expanded(child: Container()),
            Padding(
              padding: EdgeInsets.all(Tp.size.ref24),
              child: AppButton(
                label: intl(context, 'onboarding.button'),
                onPressed: () {
                  Modular.to.navigate('/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
