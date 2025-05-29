import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A helper class for managing text styles in the application
class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // Headline Styles
  // Medium-large text styles for section headers

  TextStyle get headline30Medium => TextStyle(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  // Title Styles
  // Medium text styles for titles and subtitles

  TextStyle get title22Medium => TextStyle(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20RegularRoboto => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      );

  TextStyle get title20Medium => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20SemiBold => TextStyle(
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get title18Regular => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get title18Medium => TextStyle(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  TextStyle get title16Regular => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get title16 =>
      TextStyle(fontSize: 16.fSize, color: appTheme.whiteCustom);

  TextStyle get title16Medium => TextStyle(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  // Body Styles
  // Standard text styles for body content

  TextStyle get body15SemiBold => TextStyle(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body14Regular => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get body14SemiBold => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body14Medium => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.colorFF1F29,
      );

  TextStyle get body14Light => TextStyle(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  TextStyle get body14 =>
      TextStyle(fontSize: 14.fSize, color: appTheme.blackCustom);

  TextStyle get body12Regular => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12Medium => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12SemiBold => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body12 =>
      TextStyle(fontSize: 12.fSize, color: appTheme.whiteCustom);

  TextStyle get body12Light => TextStyle(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  // Label Styles
  // Small text styles for labels, captions, and hints

  TextStyle get label11Light => TextStyle(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  TextStyle get label11 =>
      TextStyle(fontSize: 11.fSize, color: appTheme.blackCustom);

  TextStyle get label9SemiBold => TextStyle(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get label9 =>
      TextStyle(fontSize: 9.fSize, color: appTheme.whiteCustom);


  // Add these styles to TextStyleHelper class

// Inter Light (300) Styles
  TextStyle get inter30Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter22Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 22.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter20Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter18Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter16Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter14Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

  TextStyle get inter12Light => TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.fSize,
    fontWeight: FontWeight.w300,
    color: appTheme.blackCustom,
  );

// Inter Regular (400) Styles
  TextStyle get inter30Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter22Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 22.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter20Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter18Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter16Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter14Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

  TextStyle get inter12Regular => TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.fSize,
    fontWeight: FontWeight.w400,
    color: appTheme.blackCustom,
  );

// Inter Medium (500) Styles
  TextStyle get inter30Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter22Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 22.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter20Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter18Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter16Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter14Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

  TextStyle get inter12Medium => TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.fSize,
    fontWeight: FontWeight.w500,
    color: appTheme.blackCustom,
  );

// Inter SemiBold (600) Styles
  TextStyle get inter30SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter22SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 22.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter20SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter18SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter16SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter14SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

  TextStyle get inter12SemiBold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.fSize,
    fontWeight: FontWeight.w600,
    color: appTheme.blackCustom,
  );

// Inter Bold (700) Styles
  TextStyle get inter30Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 30.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter22Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 22.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter20Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter18Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 18.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter16Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter14Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 14.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );

  TextStyle get inter12Bold => TextStyle(
    fontFamily: 'Inter',
    fontSize: 12.fSize,
    fontWeight: FontWeight.w700,
    color: appTheme.blackCustom,
  );
}
