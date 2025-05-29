import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

class LightCodeColors {
  // App Colors
  Color get black => Color(0xFF1E1E1E);
  Color get white => Color(0xFFFFFFFF);
  Color get gray100 => Color(0xFFF3F4F6);
  Color get gray800 => Color(0xFF1F2937);
  Color get green600 => Color(0xFF059669);
  Color get red500 => Color(0xFFEF4444);
  Color get purple400 => Color(0xFFA78BFA);
  Color get purple600 => Color(0xFF7C3AED);
  Color get red100 => Color(0xFFFEE2E2);
  Color get red600 => Color(0xFFDC2626);
  Color get green100 => Color(0xFFD1FAE5);
  Color get gray200 => Color(0xFFE5E7EB);

  // Additional Colors
  Color get whiteCustom => Colors.white;
  Color get blackCustom => Colors.black;
  Color get transparentCustom => Colors.transparent;
  Color get greyCustom => Colors.grey;
  Color get colorFFF5F5 => Color(0xFFF5F5F5);
  Color get colorFF6891 => Color(0xFF6891B7);
  Color get colorFF4A7B => Color(0xFF4A7BA7);
  Color get colorFF1F29 => Color(0xFF1F2937);
  Color get colorFFE5E7 => Color(0xFFE5E7EB);
  Color get colorFFFB92 => Color(0xFFFB923C);
  Color get colorFF16A3 => Color(0xFF16A34A);
  Color get colorFF9333 => Color(0xFF9333EA);
  Color get colorFFFEF2 => Color(0xFFFEF2F2);
  Color get colorFFDC26 => Color(0xFFDC2626);
  Color get colorFFEF44 => Color(0xFFEF4444);
  Color get colorFFA855 => Color(0xFFA855F7);
  Color get colorFFF0FD => Color(0xFFF0FDF4);

  // Color Shades - Each shade has its own dedicated constant
  Color get grey200 => Colors.grey.shade200;
  Color get grey100 => Colors.grey.shade100;
}
