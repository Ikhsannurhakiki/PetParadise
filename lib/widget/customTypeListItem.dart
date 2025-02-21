import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTypeListItem extends StatefulWidget {
  final String image;
  final VoidCallback onTap;
  final bool isClicked;
  final Color color;
  final Color shadowColor;

  const CustomTypeListItem(
      {super.key,
      required this.image,
      required this.onTap,
      required this.color,
      required this.shadowColor,
      required this.isClicked});

  @override
  _CustomTypeListItemState createState() => _CustomTypeListItemState();
}

class _CustomTypeListItemState extends State<CustomTypeListItem> {
  Color currentColor = Colors.white;
  @override
  void initState() {
    currentColor = widget.isClicked ? AppColors.lightBlue : Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 8.0),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: widget.shadowColor,
                  offset: Offset(3, 3),
                  blurRadius: 6,
                )
              ],
              border: Border.all(color: AppColors.lightBlue, width: 3),
              color:  widget.isClicked ? AppColors.lightBlue : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                widget.image,
                height: 50,
                width: 50,
              ),
            ),
          ),
        ));
  }
}
