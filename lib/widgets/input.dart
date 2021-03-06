import 'package:flutter/material.dart';
import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/typography.dart';

class InputText extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final IconData icon;
  final TextInputType keyboardType;
  final List<String> validator;
  final bool isPassword;
  final bool isLast;

  const InputText(
    this.labelText, {
    Key? key,
    required this.controller,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.validator = const ["required"],
    this.isPassword = false,
    this.isLast = false,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _obscureText = false;
  final _focus = FocusNode();
  IconData suffixIcon = Icons.visibility_outlined;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
    _focus.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(() => setState(() {}));
    _focus.dispose();
  }

  // Toggling Visibility of Password Field
  void toogleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText) {
        suffixIcon = Icons.visibility_outlined;
      } else {
        suffixIcon = Icons.visibility_off_outlined;
      }
    });
  }

  String? validate(value) {
    if (widget.validator.contains("required") &&
        (value == null || value.isEmpty)) {
      return errorMessage("required", widget.labelText);
    }

    if (widget.validator.contains("invalid") &&
        (value!.length < 3 || value.length > 20)) {
      return errorMessage("invalid", widget.labelText);
    }

    if (widget.validator.contains("email")) {
      RegExp emailRegex = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
      if (!emailRegex.hasMatch(value!)) {
        return errorMessage("email", widget.labelText);
      }
    }
  }

  String? errorMessage(String rules, String labelText) {
    labelText = labelText.toLowerCase();
    switch (rules) {
      case "required":
        return "Please fill in the $labelText.";

      case "invalid":
        return 'The $labelText must be 3 until 20 characters.';

      case "email":
        return 'The $labelText must be a valid email address';
    }
  }

  @override
  Widget build(BuildContext context) {
    Color iconColor = _focus.hasFocus ? secondaryColor : neutralColor;

    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          widget.icon,
          size: 20,
          color: iconColor,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  suffixIcon,
                  size: 20,
                  color: iconColor,
                ),
                onPressed: toogleObscureText,
              )
            : null,
        labelText: widget.labelText,
        labelStyle: textStyle("normal", "regular", neutralColor),
        errorStyle: textStyle("small", "bold", errorColor),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: neutralColor,
          ),
        ),
      ),
      style: textStyle("normal", "regular", neutralColor[0]),
      controller: widget.controller,
      obscureText: _obscureText,
      keyboardType: widget.keyboardType,
      validator: validate,
      textInputAction:
          widget.isLast ? TextInputAction.done : TextInputAction.next,
      autofocus: true,
      focusNode: _focus,
    );
  }
}
