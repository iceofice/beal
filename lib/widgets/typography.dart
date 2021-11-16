import 'package:flutter/material.dart';
import '../utils/colors.dart';

class StyledTypography extends StatelessWidget {
  final String text;
  final String style;

  const StyledTypography({
    Key? key,
    required this.text,
    this.style = "normal",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle(style),
    );
  }
}

_textStyle(String style) {
  switch (style) {
    case "h1":
      return const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: neutralColor,
      );
    case "h2":
      return const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: neutralColor,
      );
    case "h3":
      return const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: neutralColor,
      );
    case "h4":
      return const TextStyle(
        fontSize: 18,
        color: neutralColor,
      );
    case "h5":
      return const TextStyle(
        fontSize: 16,
        color: neutralColor,
      );
    case "h6":
      return const TextStyle(
        fontSize: 14,
        color: neutralColor,
      );
    case "button":
      return const TextStyle(
        fontSize: 16,
        color: neutralColor,
        fontWeight: FontWeight.bold,
      );
    case "normal":
      return const TextStyle(
        fontSize: 16,
        color: neutralColor,
      );
    case "small":
      return const TextStyle(
        fontSize: 12,
        color: neutralColor,
      );
    case "bold":
      return const TextStyle(
        fontSize: 16,
        color: neutralColor,
        fontWeight: FontWeight.bold,
      );
    default:
      return const TextStyle(
        fontSize: 16,
        color: neutralColor,
      );
  }
}
