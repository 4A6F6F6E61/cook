import 'package:cook/tabs/ingredients/ingredients_page.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:cook/tabs/home/home_page.dart';
import 'package:cook/tabs/recipes/recipes_page.dart';
import 'package:cook/tabs/account/account_page.dart';

class Tab {
  final IconData icon;
  final String label;
  final String path;
  final Widget Function(BuildContext, GoRouterState)? builder;

  Tab({
    required this.icon,
    required this.label,
    required this.path,
    required this.builder,
  });
}

final List<Tab> tabs = [
  Tab(
    icon: Icons.home,
    label: 'Home',
    path: '/',
    builder: (_, _) => HomePage(),
  ),
  Tab(
    icon: Icons.restaurant,
    label: 'Recipes',
    path: '/recipes',
    builder: (_, _) => RecipesPage(),
  ),
  Tab(
    icon: Icons.inventory,
    label: 'Ingredients',
    path: '/ingredients',
    builder: (_, _) => IngredientsPage(),
  ),
  Tab(
    icon: Icons.account_circle,
    label: 'Account',
    path: '/account',
    builder: (_, _) => AccountPage(),
  ),
];
