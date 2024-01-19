import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gotter_chat/app/commons/widgets/form/app_button.dart';

void main() {
  const buttonLabel = 'Gotter Chat';

  group('AppButton Widget', () {
    testWidgets(
        'should render the AppButton widget with its default attributes',
        (tester) async {
      var buttonPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(
              onPressed: () {
                buttonPressed = true;
              },
              label: buttonLabel,
            ),
          ),
        ),
      );

      expect(find.byType(AppButton), findsOneWidget);
      expect(find.text(buttonLabel), findsOneWidget);

      await tester.tap(find.byType(AppButton));
      await tester.pump();

      expect(buttonPressed, true);
    });

    testWidgets('should render the AppButton widget with custom width',
        (tester) async {
      const buttonSize = 200.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppButton(
              onPressed: () {},
              label: buttonLabel,
              width: buttonSize,
            ),
          ),
        ),
      );

      final renderBox =
          tester.renderObject(find.byType(AppButton)) as RenderBox;

      expect(renderBox.size.width, closeTo(buttonSize, 5.0));
    });
  });
}
