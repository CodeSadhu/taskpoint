import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static TextStyle bodyStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 20,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
    );
  }

  static TextStyle smallBodyStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
    );
  }

  static TextStyle buttonStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color,
    );
  }

  static TextStyle appbarStyle({
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize ?? 32,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
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
}
