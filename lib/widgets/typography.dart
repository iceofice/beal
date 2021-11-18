import 'package:flutter/material.dart';
import '../utils/colors.dart';

class StyledTypography extends StatelessWidget {
  final String text;
  final String style;
  final String weight;
  final Color color;

  const StyledTypography(this.text,
      {Key? key,
      this.style = "normal",
      this.weight = "regular",
      this.color = neutralColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle(style, weight, color),
    );
  }
}

_fontWeight(String weight) {
  switch (weight) {
    case "regular":
      return FontWeight.w400;
    case "medium":
      return FontWeight.w500;
    case "semibold":
      return FontWeight.w600;
    case "bold":
      return FontWeight.w700;
    case "extrabold":
      return FontWeight.w800;
  }
}

_textStyle(String style, String weight, Color color) {
  switch (style) {
    case "h1":
      return TextStyle(
        fontSize: 32,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "h2":
      return TextStyle(
        fontSize: 24,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "h3":
      return TextStyle(
        fontSize: 20,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "h4":
      return TextStyle(
        fontSize: 18,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "h5":
      return TextStyle(
        fontSize: 16,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "h6":
      return TextStyle(
        fontSize: 14,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: -0.25,
      );
    case "button":
      return TextStyle(
        fontSize: 14,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: 0.5,
      );
    case "normal":
      return TextStyle(
        fontSize: 16,
        fontWeight: _fontWeight(weight),
        color: color,
        letterSpacing: 0.5,
      );
  }
}
