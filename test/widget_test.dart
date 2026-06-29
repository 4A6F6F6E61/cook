import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cook/components/ui_button.dart';

void main() {
  testWidgets('UIButton renders correctly and handles taps', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: UIButton(
            label: 'Test Button',
            onPressed: () {
              pressed = true;
            },
          ),
        ),
      ),
    );

    expect(find.text('Test Button'), findsOneWidget);
    await tester.tap(find.byType(UIButton));
    expect(pressed, isTrue);
  });
}
