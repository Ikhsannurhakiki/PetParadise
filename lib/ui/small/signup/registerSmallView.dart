import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_paradise/ui/small/homeSmall.dart';
import 'package:pet_paradise/ui/small/signin/loginSmallView.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_bloc.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_event.dart';
import 'package:pet_paradise/ui/small/signup/bloc/signup_state.dart';
import 'package:pet_paradise/utils/colors.dart';
import 'package:pet_paradise/widget/CustomTextField.dart';
import 'package:pet_paradise/widget/customButton.dart';

class RegisterScreenSmall extends StatefulWidget {
  const RegisterScreenSmall({super.key});

  @override
  State<RegisterScreenSmall> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreenSmall> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1),
                        child: Text("Everything for Your Pet's Happiness",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500))),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05),
                            CustomTextField(
                                textController: usernameController,
                                textFieldState: "text",
                                label: "Enter your username",
                                shadowColor: Colors.black),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            CustomTextField(
                                textController: emailController,
                                textFieldState: "text",
                                label: "Enter your email",
                                shadowColor: Colors.black),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            CustomTextField(
                                textController: passwordController,
                                textFieldState: "password",
                                label: "Enter your password",
                                shadowColor: Colors.black),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            CustomTextField(
                                textController: passwordController,
                                textFieldState: "password",
                                label: "Confirm your password",
                                shadowColor: Colors.black),
                            SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.02),
                            BlocConsumer<SignUpBloc, SignUpState>(
                                listener: (context, state) {
                              if (state is SignUpFailure) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(state.message)));
                              }
                            }, builder: (context, state) {
                              return CustomButton(
                                  text: "Sign Up",
                                  onPressed: () {
                                    final username = usernameController.text;
                                    final email = emailController.text;
                                    final password = passwordController.text;
                                    final confirmPassword =
                                        confirmPasswordController.text;
                                    context.read<SignUpBloc>().add(SignUpButtonPressed(username: username, email: email, password: password, confirmPassword: confirmPassword));
                                    print(username);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeSmallScreen()));
                                  },
                                  shadowColor: Colors.black);
                            }),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.015),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 15)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreenSmall()),
                              );
                            },
                            child: Text("Signin",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15)))
                      ],
                    ),
                    SizedBox(height: 15)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
