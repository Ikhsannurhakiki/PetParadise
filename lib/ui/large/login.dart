import 'package:flutter/material.dart';
import 'package:pet_paradise/utils/colors.dart';
import 'package:pet_paradise/ui/large/mainScreen.dart';

class LoginScreenLarge extends StatefulWidget {
  const LoginScreenLarge({super.key});

  @override
  State<LoginScreenLarge> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenLarge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
            ),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorsHelper.secondaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  width: constraints.maxWidth * 0.7,
                  height: constraints.maxHeight * 0.7,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500)),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: constraints.maxWidth * 0.3,
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  children: [
                                    TextField(
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          filled: true,
                                          fillColor: ColorsHelper.inputColor,
                                          suffixIcon: Icon(
                                            Icons.check_circle,
                                            color: Colors.black,
                                          ),
                                          labelText: "Enter your email",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2.0)),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .lightGreen, // Change outline color when focused
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: "example@mail.com",
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textInputAction: TextInputAction.done),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    TextField(
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300,
                                          ),
                                          filled: true,
                                          fillColor: ColorsHelper.inputColor,
                                          suffixIcon: Icon(
                                              Icons.remove_red_eye_rounded,
                                              color: Colors.black),
                                          labelText: "Enter your password",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2.0)),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 2.0,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .lightGreen, // Change outline color when focused
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: "Enter your password",
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textInputAction: TextInputAction.done),
                                    SizedBox(height: 50),
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
                                              offset:
                                                  Offset(0, 4), // Shadow offset
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
                                              minimumSize:
                                                  Size(double.infinity, 50),
                                              backgroundColor:
                                                  ColorsHelper.buttonColor,
                                            ),
                                            child: Text("Login",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15)))),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.01),
                                    TextButton(
                                        onPressed: () {
                                          // Handle button press
                                        },
                                        child: Text(
                                          "Forget Your Password?",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w500),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                width: constraints.maxWidth * 0.3,
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(children: [
                                    Text(
                                      "Need an account?",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                        height: constraints.maxHeight * 0.01),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Image.asset(
                                            'lib/assets/twitter.png', // Replace with your image path
                                            width: constraints.maxWidth * 0.04,
                                            height:
                                                constraints.maxHeight * 0.04,
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
                                            'lib/assets/twitter.png', // Replace with your image path
                                            width: constraints.maxWidth * 0.04,
                                            height:
                                                constraints.maxHeight * 0.04,
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
                                            'lib/assets/twitter.png', // Replace with your image path
                                            width: constraints.maxWidth * 0.04,
                                            height:
                                                constraints.maxHeight * 0.04,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]),
                                ))
                          ],
                        ),
                      ]),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
