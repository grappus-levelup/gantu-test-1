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
  TextStyle get headline30Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  // Title Styles
  TextStyle get title22Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20RegularRoboto => TextStyle(
        fontFamily: 'Inter',
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );

  TextStyle get title20Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get title20SemiBold => TextStyle(
        fontFamily: 'Inter',
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get title18Regular => TextStyle(
        fontFamily: 'Inter',
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get title18Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  TextStyle get title16Regular => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get title16 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get title16Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.blackCustom,
      );

  // Body Styles
  TextStyle get body15SemiBold => TextStyle(
        fontFamily: 'Inter',
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body14Regular => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get body14SemiBold => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body14Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.colorFF1F29,
      );

  TextStyle get body14Light => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  TextStyle get body14 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get body12Regular => TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12Medium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12SemiBold => TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get body12 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.fSize,
        color: appTheme.whiteCustom,
      );

  TextStyle get body12Light => TextStyle(
        fontFamily: 'Inter',
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  // Label Styles
  TextStyle get label11Light => TextStyle(
        fontFamily: 'Inter',
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
        color: appTheme.blackCustom,
      );

  TextStyle get label11 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 11.fSize,
        color: appTheme.blackCustom,
      );

  TextStyle get label9SemiBold => TextStyle(
        fontFamily: 'Inter',
        fontSize: 9.fSize,
        fontWeight: FontWeight.w600,
        color: appTheme.blackCustom,
      );

  TextStyle get label9 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 9.fSize,
        color: appTheme.whiteCustom,
      );
}