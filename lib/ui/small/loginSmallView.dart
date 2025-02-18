import 'package:flutter/material.dart';
import 'package:pet_paradise/assets/helper/colors.dart';
import 'package:pet_paradise/assets/helper/widget/LoginTextField.dart';
import 'package:pet_paradise/ui/large/mainScreen.dart';

class LoginScreenSmall extends StatefulWidget {
  const LoginScreenSmall({super.key});

  @override
  State<LoginScreenSmall> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenSmall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(25))),
                        child: Center(),
                      ),
                      Positioned(
                          top: MediaQuery.sizeOf(context).height * 0.1,
                          left: MediaQuery.sizeOf(context).width * 0.05,
                          child: Text(
                            "Pet's \nParadise",
                            style: TextStyle(
                                fontSize: 35,
                                color: AppColors.lightCyan,
                                fontWeight: FontWeight.w900),
                          )),
                      Positioned(
                        top: MediaQuery.sizeOf(context).height * 0.045,
                        right: MediaQuery.sizeOf(context).width * 0.05,
                        child: Image.asset(
                          'lib/assets/cat.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.3),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.1),
                          child: Text("Everything for Your Pet's Happiness",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500))),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1,
                              right: MediaQuery.of(context).size.width * 0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.05),
                              LoginTextField(textFieldState: "email"),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              LoginTextField(textFieldState: "password"),
                              TextButton(
                                  onPressed: () {
                                    // Handle button press
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                              SizedBox(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.01),
                              Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.from(
                                            alpha: 0x4D,
                                            red: 00,
                                            green: 00,
                                            blue: 00),
                                        spreadRadius: 2, // Spread radius
                                        blurRadius: 10, // Blur radius
                                        offset: Offset(0, 4), // Shadow offset
                                      ),
                                    ],
                                  ),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainScreen()),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(double.infinity, 50),
                                        backgroundColor:
                                            ColorsHelper.buttonColor,
                                      ),
                                      child: Text("Login",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15)))),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.015),
                              Container(
                                  padding: EdgeInsets.all(
                                      MediaQuery.of(context).size.width * 0.01),
                                  child: Column(children: [
                                    Text(
                                      "OR",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            'lib/assets/twitter.png',
                                            // Replace with your image path
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.07,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.07,
                                          ),
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01),
                                        InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            'lib/assets/twitter.png',
                                            // Replace with your image path
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.07,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.07,
                                          ),
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01),
                                        InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            'lib/assets/twitter.png',
                                            // Replace with your image path
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.07,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.07,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]))
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
