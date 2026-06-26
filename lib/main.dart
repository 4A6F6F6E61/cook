import 'package:cook/router.dart';
import 'package:cook/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Cook', theme: buildTheme(.dark), routerConfig: router);
  }
}
