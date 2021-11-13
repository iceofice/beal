import 'package:flutter/material.dart';
import 'package:beal/utils/colors.dart';

class InputText extends StatefulWidget {
  final TextEditingController controller;
  final IconData icon;
  final String labelText;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  const InputText({
    Key? key,
    required this.controller,
    this.icon = Icons.person,
    this.labelText = '',
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _focus = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: _focus ? secondaryColor : neutralColor,
          ),
          labelText: widget.labelText,
          labelStyle: const TextStyle(color: neutralColor),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: neutralColor,
            ),
          ),
        ),
        style: const TextStyle(color: Colors.white),
        controller: widget.controller,
        obscureText: widget.isPassword,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
      ),
      onFocusChange: (focus) {
        setState(() {
          _focus = focus;
        });
      },
    );
  }
}
