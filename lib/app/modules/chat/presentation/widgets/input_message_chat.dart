import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class InputMessageChat extends StatelessWidget {
  const InputMessageChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Tp.size.ref16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Tp.size.ref48),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(Tp.size.ref16),
                  hintText: 'type here...',
                  hintStyle: TextStyle(
                    color: Tp.colors.grey20,
                    fontWeight: Tp.fontWeights.regular,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.emoji_emotions_outlined,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
