import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_paradise/assets/helper/colors.dart';
import 'package:pet_paradise/assets/helper/widget/LoginTextField.dart';

class HomeSmallScreen extends StatelessWidget {
  const HomeSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            foregroundColor: AppColors.lightBlue,
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
                  icon: Icon(Icons.more_horiz,size: 35), // More options icon
                  onPressed: () {
                    // Handle "more options" click here
                  },
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
          child: Column(
            children: [
              LoginTextField(textFieldState: "text", label: "Search")
            ],
          ),
        ),
      ),
    );
  }
}
