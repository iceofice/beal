import 'package:flutter/material.dart';
import 'package:beal/utils/colors.dart';
import 'package:beal/widgets/typography.dart';

class InputText extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  const InputText(
    this.labelText, {
    Key? key,
    required this.controller,
    this.icon = Icons.person,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _obscureText = false;
  final _focus = FocusNode();

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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          widget.icon,
          size: 20,
          color: _focus.hasFocus ? secondaryColor : neutralColor,
        ),
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
      validator: widget.validator,

      /// Change to done if the last child
      textInputAction: TextInputAction.next,
      autofocus: true,
      focusNode: _focus,
    );
  }
}
