import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';
import 'package:gotter_chat/app/commons/widgets/form/app_button.dart';

class HomeEmptyMessages extends StatelessWidget {
  const HomeEmptyMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: Tp.size.ref110,
        ),
        SvgPicture.asset('assets/home/chat.svg'),
        SizedBox(
          height: Tp.size.ref8,
        ),
        Text(
          'No chat found\nStart a new One?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: Tp.fontWeights.regular,
            fontSize: 16,
            color: Tp.colors.grey20,
          ),
        ),
        SizedBox(
          height: Tp.size.ref64,
        ),
        AppButton(
          onPressed: () {},
          width: 15,
          label: 'Enable Public URL',
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Tp.size.ref16),
          child: Text(
            'or',
            style: TextStyle(
              fontWeight: Tp.fontWeights.regular,
              fontSize: 16,
              color: Tp.colors.grey20,
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Text(
              'Import an address',
              style: TextStyle(
                color: Tp.colors.blue,
              ),
            ),
          ),
        )
      ],
    );
  }
}
