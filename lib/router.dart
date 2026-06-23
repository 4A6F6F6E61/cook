import 'package:cook/navigation.dart';
import 'package:cook/tabs/tabs.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (_, _, shell) {
        return Navigation(navigationShell: shell);
      },
      branches: [
        for (final tab in tabs)
          StatefulShellBranch(
            routes: [GoRoute(path: tab.path, builder: tab.builder)],
          ),
      ],
    ),
  ],
);
