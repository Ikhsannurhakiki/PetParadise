import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/local/dataTypeList.dart';

import '../utils/colors.dart';
import 'customTypeListItem.dart';

class CustomTypeList extends StatefulWidget {
  const CustomTypeList({super.key});

  @override
  _CustomTypeListState createState() => _CustomTypeListState();
}

class _CustomTypeListState extends State<CustomTypeList> {
  int? _selectedIndex;

  void _changeColor(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconUrlList.length,
        itemBuilder: (context, index) {
          final String iconUrl = iconUrlList[index];
          return CustomTypeListItem(
              image: iconUrl,
              isClicked: _selectedIndex == index ? true : false,
              color:
                  _selectedIndex == index ? AppColors.lightBlue : Colors.white,
              shadowColor: _selectedIndex == index ? Colors.white : Colors.grey,
              onTap: () => _changeColor(index));
        },
      ),
    );
  }
}
