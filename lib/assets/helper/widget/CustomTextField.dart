import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class LoginTextField extends StatefulWidget {
  final String textFieldState;
  final String label;

  const LoginTextField({Key? key, required this.textFieldState, required this.label}) : super(key: key);

  @override
  _LoginTextFieldState createState() =>
      _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  IconData currentIcon = Icons.help_outline;
  late String currentHint;
  late String currentLabel;
  bool _isPassword = false;
  bool _obscureText = true;

  final Map<String, IconData> iconMap = {
    "email": Icons.check_circle,
    "password": Icons.remove_red_eye_rounded,
    "text": Icons.help_outline,
  };

  final Map<String, String> hint = {
    "email": "",
    "password": "",
    "text": "",
  };

  @override
  void initState() {
    setState(() {
      currentIcon = iconMap[widget.textFieldState]!;
      currentHint = hint[widget.textFieldState]!;
      currentLabel = widget.label!;
      if(widget.textFieldState =="password"){
        _isPassword = !_isPassword;
      }
      _obscureText = true;
    });
  }

  void _toggleInputType() {
    setState(() {
      if(widget.textFieldState =="password"){
        _isPassword = !_isPassword;
      }
      _obscureText = true; // Reset the password visibility when switching
    });
  }

  void _togglePasswordVisibility() {
    if (_isPassword) {
      setState(() {
        _obscureText = !_obscureText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(3, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: TextField(
        obscureText: _isPassword ? _obscureText : false,
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: ColorsHelper.labelColor,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: _isPassword
              ? IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: _togglePasswordVisibility,
          ):SizedBox(),
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
        ),

        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
