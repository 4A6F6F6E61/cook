import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cook/login_page.dart';
import 'package:cook/navigation.dart';
import 'package:cook/tabs/tabs.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthListenable extends ChangeNotifier {
  late final StreamSubscription<AuthState> _authSubscription;

  SupabaseAuthListenable() {
    _authSubscription = Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _authSubscription.cancel();
    super.dispose();
  }
}

final router = GoRouter(
  initialLocation: '/',
  refreshListenable: SupabaseAuthListenable(),
  redirect: (context, state) {
    final session = Supabase.instance.client.auth.currentSession;
    final loggedIn = session != null;
    final loggingIn = state.matchedLocation == '/login';

    if (!loggedIn) {
      return loggingIn ? null : '/login';
    }

    if (loggingIn) {
      return '/';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) {
        return Navigation(navigationShell: shell);
      },
      branches: [
        for (final tab in tabs)
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: tab.path,
                builder: tab.builder,
              ),
            ],
          ),
      ],
    ),
  ],
);
