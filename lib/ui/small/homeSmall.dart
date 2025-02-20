import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_paradise/assets/helper/colors.dart';
import 'package:pet_paradise/assets/helper/widget/CustomTextField.dart';
import 'package:pet_paradise/assets/helper/widget/customTypeList.dart';
import 'package:pet_paradise/assets/helper/widget/customTypeListItem.dart';

import '../../data/local/dataTypeList.dart';

class HomeSmallScreen extends StatelessWidget {
  const HomeSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            foregroundColor: ColorsHelper.iconColor,
            backgroundColor: Colors.white,
            leading: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(
                    'lib/assets/defaultprofile.jpg', // Replace with your image URL or asset
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 8),
                child: IconButton(
                  icon: Icon(Icons.more_horiz, size: 35), // More options icon
                  onPressed: () {
                    // Handle "more options" click here
                  },
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 15,
                    child: CustomTextField(
                        textFieldState: "text", label: "Search", shadowColor: Colors.grey),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 56.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(3, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.filter_list_sharp,
                          color: ColorsHelper.iconColor,
                        ),
                      ))
                ],
              ),
              CustomTypeList()
            ],
          ),
        ),
      ),
    );
  }
}
