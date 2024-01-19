import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gotter_chat/app/commons/widgets/complex/screen.dart';

void main() {
  group('Screen Widget', () {
    testWidgets('should render the Screen widget with its default attributes',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Screen(
            child: Container(),
          ),
        ),
      );

      expect(find.byType(SafeArea), findsOneWidget);
      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
      expect(find.byType(ColoredBox), findsOneWidget);
      expect(find.byType(DecoratedBox), findsOneWidget);
    });

    testWidgets('should render the Screen widget with app bar attribute',
        (tester) async {
      const appBarTitle = 'Gotter Chat';

      await tester.pumpWidget(
        MaterialApp(
          home: Screen(
            appBar: AppBar(
              title: const Text(appBarTitle),
            ),
            child: Container(),
          ),
        ),
      );

      final appBarFinder = find.byType(AppBar);
      final appBarWidget = tester.widget(appBarFinder) as AppBar;

      expect(appBarFinder, findsOneWidget);
      expect(appBarWidget.title, isA<Text>());
      expect((appBarWidget.title! as Text).data, appBarTitle);
    });
  });
}
