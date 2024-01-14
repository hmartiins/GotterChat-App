import 'package:flutter/material.dart';
import 'package:gotter_chat/app/commons/styles/tokens.dart';

class AppButton extends FilledButton {
  AppButton({
    required VoidCallback onPressed,
    required String label,
    bool isDisabled = false,
    super.key,
  }) : super(
          style: TextButton.styleFrom(
            minimumSize: Size(double.infinity, Tp.size.ref48),
            backgroundColor: Tp.colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Tp.radii.ref4),
            ),
          ),
          onPressed: !isDisabled ? onPressed : null,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        );
}
