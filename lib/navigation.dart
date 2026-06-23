import 'package:cook/tabs/tabs.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          for (final tab in tabs)
            BottomNavigationBarItem(icon: Icon(tab.icon), label: tab.label),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) {
          widget.navigationShell.goBranch(index);
        },
      ),
    );
  }
}
