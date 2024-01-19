import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gotter_chat/app/commons/widgets/ui/user_avatar.dart';

void main() {
  const imageUrl = 'assets/onboarding/characters.png';

  group('User Avatar Widget', () {
    testWidgets(
        'should render the User Avatar component with its default attributes',
        (tester) async {
      await tester.pumpWidget(
        const UserAvatar(
          imageUrl: imageUrl,
        ),
      );

      expect(find.byType(Image), findsOneWidget);

      expect((find.byType(Image).evaluate().first.widget as Image).width, 50);
      expect((find.byType(Image).evaluate().first.widget as Image).height, 50);

      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Image &&
              widget.image is AssetImage &&
              (widget.image as AssetImage).assetName == imageUrl,
        ),
        findsOneWidget,
      );
    });

    testWidgets('should render the User Avatar component with custom size',
        (tester) async {
      const customSize = 200.0;

      await tester.pumpWidget(
        const UserAvatar(
          imageUrl: imageUrl,
          imageHeight: customSize,
          imageWidth: customSize,
        ),
      );

      expect(
        (find.byType(Image).evaluate().first.widget as Image).width,
        customSize,
      );
      expect(
        (find.byType(Image).evaluate().first.widget as Image).height,
        customSize,
      );
    });

    testWidgets('should render the User Avatar component with online indicator',
        (tester) async {
      const defaultSize = 12.0;

      await tester.pumpWidget(
        const UserAvatar(
          imageUrl: imageUrl,
          isOnline: true,
        ),
      );

      expect(find.byType(SizedBox), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is SizedBox &&
              widget.height == defaultSize &&
              widget.width == defaultSize,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'should render the User Avatar component with online indicator and custom size',
        (tester) async {
      const customSize = 20.0;

      await tester.pumpWidget(
        const UserAvatar(
          imageUrl: imageUrl,
          isOnline: true,
          onlineSize: customSize,
        ),
      );

      expect(find.byType(SizedBox), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is SizedBox &&
              widget.height == customSize &&
              widget.width == customSize,
        ),
        findsOneWidget,
      );
    });
  });
}
