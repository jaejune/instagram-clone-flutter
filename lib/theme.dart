import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.onBuildContextProps,
  generateStaticGetters: true,
)
class $_AppTheme {
  static const List<Color> background = [Color(0xFFffffff), Color(0xFF000000)];
  static const List<Color> primary = [Color(0xFF1FA1FF), Color(0xFF1FA1FF)];
  static const List<Color> secondary = [
    Color(0xFFEFEFEF),
    Color.fromRGBO(239, 239, 239, 0.2)
  ];
  static const List<Color> border = [
    Color.fromRGBO(0, 0, 0, 0.1),
    Color.fromRGBO(255, 255, 255, 0.1)
  ];
  static const List<Color> text = [Color(0xFF000000), Color(0xFFffffff)];
  static const List<Color> buttonText = [Color(0xFFffffff), Color(0xFFffffff)];
  static const List<Color> subText = [
    Color(0xFF6E6E6E),
    Color.fromRGBO(255, 255, 255, 0.5)
  ];
  static const List<Color> primaryText = [Color(0xFF004C8B), Color(0xFF004C8B)];
}

const kGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFFFECD00),
      Color(0xFFF9373F),
      Color(0xFFC913B9),
    ]);

ThemeData lightTheme() {
  return ThemeData(
      iconTheme: const IconThemeData(color: Color(0xFF000000)),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Color(0xFF000000)),
      ),
      brightness: Brightness.light,
      highlightColor: Colors.transparent,
      extensions: const [AppTheme.light],
      primarySwatch: const MaterialColor(
        0xFF8B5CF6,
        <int, Color>{
          50: Color(0xFFf5f3ff),
          100: Color(0xFFede9fe),
          200: Color(0xFFddd6fe),
          300: Color(0xFFc4b5fd),
          400: Color(0xFFa78bfa),
          500: Color(0xFF8b5cf6),
          600: Color(0xFF7c3aed),
          700: Color(0xFF6d28d9),
          800: Color(0xFF5b21b6),
          900: Color(0xFF4c1d95),
        },
      ),
      primaryColor: Colors.white,
      fontFamily: 'Pretendard',
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.standard);
}

ThemeData darkTheme() {
  return ThemeData(
      iconTheme: const IconThemeData(color: Color(0xFFF5F5F5)),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Color(0xFFF5F5F5)),
      ),
      brightness: Brightness.dark,
      highlightColor: Colors.transparent,
      primarySwatch: const MaterialColor(
        0xFF8B5CF6,
        <int, Color>{
          50: Color(0xFFf5f3ff),
          100: Color(0xFFede9fe),
          200: Color(0xFFddd6fe),
          300: Color(0xFFc4b5fd),
          400: Color(0xFFa78bfa),
          500: Color(0xFF8b5cf6),
          600: Color(0xFF7c3aed),
          700: Color(0xFF6d28d9),
          800: Color(0xFF5b21b6),
          900: Color(0xFF4c1d95),
        },
      ),
      extensions: const [AppTheme.dark],
      primaryColor: Colors.black,
      fontFamily: 'Pretendard',
      scaffoldBackgroundColor: Colors.black,
      visualDensity: VisualDensity.standard);
}
