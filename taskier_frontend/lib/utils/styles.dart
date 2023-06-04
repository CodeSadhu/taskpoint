import 'package:flutter/material.dart';
import 'package:taskier/utils/colors.dart';

class Styles {
  Styles._();

  static TextStyle bodyStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
    double? lineHeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 20,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
      height: lineHeight,
    );
  }

  static TextStyle smallBodyStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
    double? lineHeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
      height: lineHeight,
    );
  }

  static TextStyle buttonStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
    double? lineHeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color,
      height: lineHeight,
    );
  }

  static TextStyle appbarStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
    double? lineHeight,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 32,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
      height: lineHeight,
    );
  }

  static InputDecoration textfieldDecoration({
    InputBorder? border,
    EdgeInsets? contentPadding,
    Color? fillColor,
    bool? filled,
    String? hint,
    TextStyle? hintStyle,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      filled: filled,
      fillColor: fillColor,
      contentPadding: contentPadding,
      hintText: hint,
      hintStyle: hintStyle,
    );
  }

  static UnderlineInputBorder inputBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: ColorPalette.white,
        style: BorderStyle.solid,
      ),
    );
  }
}
