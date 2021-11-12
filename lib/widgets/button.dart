import 'package:beal/widgets/typography.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

// ignore: non_constant_identifier_names
ElevatedButton StyledButton({
  required VoidCallback onPressed,
  String buttonText = "button",
  Color buttonColor = primaryColor,
  double elevation = 0.0,
  double height = 35,
  double width = 135,
  double margin = 0,
  double padding = 0,
  double borderRadius = 31.5,
  double borderWidth = 0,
  Color borderColor = backgroundColor,
}) {
  return ElevatedButton(
    onPressed: () => {},
    style: ElevatedButton.styleFrom(
      primary: buttonColor,
      fixedSize: Size(width, height),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: StyledTypography(
        text: buttonText,
        style: "button",
      ),
    ),
  );
}
