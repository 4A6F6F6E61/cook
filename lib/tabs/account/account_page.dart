import 'package:cook/settings.dart';
import 'package:material_ui/material_ui.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account'), actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            showMaterialModalBottomSheet(
              context: context,
              expand: false,
              backgroundColor: Colors.transparent,
              builder: (context) => SettingsModal(context: context),
            );
            },
          ),
        ],
      ),
      body: const SizedBox()
    );
  }
}

class SettingsModal extends StatelessWidget {
  const SettingsModal({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final settings = Settings.of(context);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text('Theme Mode'),
            subtitle: Text('Current: ${settings.themeMode.name}'),
            trailing: SegmentedButton<ThemeMode>(
              segments: const [
                ButtonSegment(value: ThemeMode.system, icon: Icon(Icons.brightness_auto)),
                ButtonSegment(value: ThemeMode.light, icon: Icon(Icons.light_mode)),
                ButtonSegment(value: ThemeMode.dark, icon: Icon(Icons.dark_mode)),
              ],
              selected: {settings.themeMode},
              onSelectionChanged: (Set<ThemeMode> selection) {
                settings.themeMode = selection.first;
              },
            ),
          ),
          ListTile(
            title: const Text('Navigation Style'),
            subtitle: Text('Current: ${settings.navigationStyle.name}'),
            trailing: SegmentedButton<BottomNavigationStyle>(
              segments: const [
                ButtonSegment(value: BottomNavigationStyle.inkWell, icon: Icon(Icons.style)),
                ButtonSegment(value: BottomNavigationStyle.pill, icon: Icon(Icons.abc)),
              ],
              selected: {settings.navigationStyle},
              onSelectionChanged: (Set<BottomNavigationStyle> selection) {
                settings.navigationStyle = selection.first;
              },
            ),
          )
        ],
      ),
    );
  }
}
