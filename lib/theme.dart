import 'package:google_fonts/google_fonts.dart';
import 'package:material_ui/material_ui.dart';

Color primaryColor(Brightness brightness) =>
    brightness == .dark ? Colors.red : Colors.redAccent;
Color backgroundColor(Brightness brightness) =>
    brightness == .dark ? Color.fromARGB(255, 17, 18, 20) : Colors.white;

ThemeData buildTheme(Brightness brightness) {
  final baseTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor(brightness),
    primaryColor: primaryColor(brightness),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: backgroundColor(brightness),
      selectedItemColor: primaryColor(brightness),
      unselectedItemColor: Colors.grey,
      elevation: 1,
      type: BottomNavigationBarType.fixed,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundColor(brightness),
      elevation: 1,
      shadowColor: Colors.grey,
    ),
    dividerColor: brightness == .dark ? Color(0xFF212933) : Colors.grey[300],
    brightness: brightness,
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.lexendDecaTextTheme(baseTheme.textTheme),
  );
}
