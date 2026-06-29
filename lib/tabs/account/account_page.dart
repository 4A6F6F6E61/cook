import 'package:cook/settings.dart';
import 'package:material_ui/material_ui.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Supabase.instance.client.auth.currentUser;
    final email = user?.email ?? 'Unknown User';
    final initial = email.isNotEmpty ? email[0].toUpperCase() : '?';
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        actions: [
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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: theme.primaryColor.withAlpha(25),
                child: Text(
                  initial,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Logged in as',
                style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(
                email,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 48),
              ElevatedButton.icon(
                onPressed: () async {
                  await Supabase.instance.client.auth.signOut();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.errorContainer,
                  foregroundColor: theme.colorScheme.onErrorContainer,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: const Icon(Icons.logout),
                label: const Text('Sign Out'),
              ),
            ],
          ),
        ),
      ),
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
