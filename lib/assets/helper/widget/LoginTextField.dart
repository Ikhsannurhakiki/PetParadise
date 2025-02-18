import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class LoginTextField extends StatefulWidget {
  final String textFieldState;

  const LoginTextField({Key? key, required this.textFieldState}) : super(key: key);

  @override
  _LoginTextFieldState createState() =>
      _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  IconData currentIcon = Icons.help_outline;
  String currentHint = "";
  String currentLabel = "";
  final Map<String, IconData> iconMap = {
    "email": Icons.check_circle,
    "password": Icons.remove_red_eye_rounded,
    "default": Icons.help_outline,
  };

  final Map<String, String> label = {
    "email": "Enter your email",
    "password": "Enter your password",
    "default": "",
  };

  final Map<String, String> hint = {
    "email": "",
    "password": "",
    "default": "",
  };

  @override
  void initState() {
    setState(() {
      currentIcon = iconMap[widget.textFieldState]!;
      currentHint = hint[widget.textFieldState]!;
      currentLabel = label[widget.textFieldState]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: ColorsHelper.labelColor,
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        filled: true,
        fillColor: ColorsHelper.inputColor,
        suffixIcon: Icon(
          currentIcon,
          color: Colors.black,
        ),
        labelText: currentLabel,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: AppColors.lightCyan,
            // Change outline color when focused
            width: 2.0,
          ),
        ),
        hintText: currentHint,
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }
}
