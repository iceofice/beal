import 'package:beal/widgets/typography.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class StyledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonColor;
  final double elevation;
  final double height;
  final double width;
  final double margin;
  final double padding;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;

  const StyledButton(
      {Key? key,
      required this.onPressed,
      this.buttonText = "button",
      this.buttonColor = primaryColor,
      this.elevation = 0.0,
      this.height = 35,
      this.width = 135,
      this.margin = 0,
      this.padding = 0,
      this.borderRadius = 31.5,
      this.borderWidth = 0,
      this.borderColor = backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          elevation: elevation,
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
            buttonText,
            weight: "bold",
            style: "button",
          ),
        ),
      ),
    );
  }
}
