import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ui/large/mainScreen.dart';
import '../colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  _CustomButton createState() => _CustomButton();
}

class _CustomButton extends State<CustomButton> {
  late String currentText;
  late VoidCallback currentPressed;

  @override
  void initState() {
    setState(() {
      currentText = widget.text;
      currentPressed = widget.onPressed;
    });
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
        child: ElevatedButton(
            onPressed: currentPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              backgroundColor: ColorsHelper.buttonColor,
            ),
            child: Text(currentText,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15))));
  }
}
