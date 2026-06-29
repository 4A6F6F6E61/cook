import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cook/login_page.dart';

void main() {
  testWidgets('LoginPage toggles between login and register modes', (WidgetTester tester) async {
    // Set a slightly larger size for test viewport if needed, or scroll
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    // Default mode is login
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Create Account'), findsNothing);
    expect(find.text('Confirm Password'), findsNothing);

    // Switch to register mode
    final signUpButton = find.text("Don't have an account? Sign Up");
    expect(signUpButton, findsOneWidget);
    await tester.ensureVisible(signUpButton);
    await tester.tap(signUpButton);
    await tester.pump();

    // Now in register mode
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.text('Welcome Back'), findsNothing);
    expect(find.text('Confirm Password'), findsOneWidget);

    // Switch back to login mode
    final logInButton = find.text('Already have an account? Log In');
    expect(logInButton, findsOneWidget);
    await tester.ensureVisible(logInButton);
    await tester.tap(logInButton);
    await tester.pump();

    // Back in login mode
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Confirm Password'), findsNothing);
  });
}
