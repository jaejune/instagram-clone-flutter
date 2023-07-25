// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.background,
    required this.border,
    required this.buttonText,
    required this.primary,
    required this.primaryText,
    required this.secondary,
    required this.subText,
    required this.text,
  });

  final Color background;
  final Color border;
  final Color buttonText;
  final Color primary;
  final Color primaryText;
  final Color secondary;
  final Color subText;
  final Color text;

  static const AppTheme light = AppTheme(
    background: Color(0xFFffffff),
    border: Color.fromRGBO(0, 0, 0, 0.1),
    buttonText: Color(0xFFffffff),
    primary: Color(0xFF1FA1FF),
    primaryText: Color(0xFF004C8B),
    secondary: Color(0xFFEFEFEF),
    subText: Color(0xFF6E6E6E),
    text: Color(0xFF000000),
  );

  static const AppTheme dark = AppTheme(
    background: Color(0xFF000000),
    border: Color.fromRGBO(255, 255, 255, 0.1),
    buttonText: Color(0xFFffffff),
    primary: Color(0xFF1FA1FF),
    primaryText: Color(0xFF004C8B),
    secondary: Color.fromRGBO(239, 239, 239, 0.2),
    subText: Color.fromRGBO(255, 255, 255, 0.5),
    text: Color(0xFFffffff),
  );

  static const themes = [
    light,
    dark,
  ];

  @override
  AppTheme copyWith({
    Color? background,
    Color? border,
    Color? buttonText,
    Color? primary,
    Color? primaryText,
    Color? secondary,
    Color? subText,
    Color? text,
  }) {
    return AppTheme(
      background: background ?? this.background,
      border: border ?? this.border,
      buttonText: buttonText ?? this.buttonText,
      primary: primary ?? this.primary,
      primaryText: primaryText ?? this.primaryText,
      secondary: secondary ?? this.secondary,
      subText: subText ?? this.subText,
      text: text ?? this.text,
    );
  }

  @override
  AppTheme lerp(covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this as AppTheme;
    return AppTheme(
      background: Color.lerp(background, other.background, t)!,
      border: Color.lerp(border, other.border, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      subText: Color.lerp(subText, other.subText, t)!,
      text: Color.lerp(text, other.text, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(border, other.border) &&
            const DeepCollectionEquality()
                .equals(buttonText, other.buttonText) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(primaryText, other.primaryText) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(subText, other.subText) &&
            const DeepCollectionEquality().equals(text, other.text));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(border),
      const DeepCollectionEquality().hash(buttonText),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryText),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(subText),
      const DeepCollectionEquality().hash(text),
    );
  }
}

extension AppThemeBuildContextProps on BuildContext {
  AppTheme get appTheme => Theme.of(this).extension<AppTheme>()!;
  Color get background => appTheme.background;
  Color get border => appTheme.border;
  Color get buttonText => appTheme.buttonText;
  Color get primary => appTheme.primary;
  Color get primaryText => appTheme.primaryText;
  Color get secondary => appTheme.secondary;
  Color get subText => appTheme.subText;
  Color get text => appTheme.text;
}
