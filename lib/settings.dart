import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum BottomNavigationStyle {
  inkWell,
  pill,
}

class Settings extends ChangeNotifier {
  static const String _themeModeKey = 'theme_mode';
  static const String _navigationStyleKey = 'navigation_style';

  final SharedPreferences _prefs;
  late ThemeMode _themeMode;
  late BottomNavigationStyle _navigationStyle;


  Settings(this._prefs) {
    _themeMode = ThemeMode.values[_prefs.getInt(_themeModeKey) ?? ThemeMode.system.index];
    _navigationStyle = BottomNavigationStyle.values[_prefs.getInt(_navigationStyleKey) ?? BottomNavigationStyle.pill.index];
  }

  ThemeMode get themeMode => _themeMode;
  BottomNavigationStyle get navigationStyle => _navigationStyle;

  set themeMode(ThemeMode mode) {
    if (_themeMode == mode) return;
    _themeMode = mode;
    _prefs.setInt(_themeModeKey, mode.index);
    notifyListeners();
  }

  set navigationStyle(BottomNavigationStyle style) {
    if (_navigationStyle == style) return;
    _navigationStyle = style;
    _prefs.setInt(_navigationStyleKey, style.index);
    notifyListeners();
  }

  static Future<Settings> load() async {
    final prefs = await SharedPreferences.getInstance();
    return Settings(prefs);
  }

  static Settings of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<SettingsProvider>();
    if (provider == null) throw Exception('Settings not found in context');
    return provider.settings;
  }
}

class SettingsProvider extends InheritedNotifier<Settings> {
  const SettingsProvider({
    super.key,
    required Settings settings,
    required super.child,
  }) : super(notifier: settings);

  Settings get settings => notifier!;
}
