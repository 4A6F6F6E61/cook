import 'package:cook/router.dart';
import 'package:cook/theme.dart';
import 'package:cook/settings.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settings = await Settings.load();
  await Supabase.initialize(
    url: 'https://jovmecpmayaziryjypbd.supabase.co',
    anonKey: 'sb_publishable_ubK_cy57dDh-kP0OwAyasQ_P-MN2niJ',
  );

  runApp(SettingsProvider(settings: settings, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = Settings.of(context);
    
    return MaterialApp.router(
      title: 'Cook',
      theme: buildTheme(.light),
      darkTheme: buildTheme(.dark),
      themeMode: settings.themeMode,
      routerConfig: router,
    );
  }
}
