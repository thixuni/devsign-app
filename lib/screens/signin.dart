import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'package:course_app/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<AuthController> {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: kLightBackground,
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/login-bg-img.png',
              ),
              Container(
                transform: Matrix4.translationValues(0, -150, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Unlock possibilities',
                      style: kMainTitle.copyWith(color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Get inspiration, listen to Lo-Fi and complete your courses at your own pace',
                      style: kSecText.copyWith(color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0, -40, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 53),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Sign in to', style: kPrimaryTitleBold),
                  Text('Start Learning',
                      style: kPrimaryTitleBold.copyWith(color: kPink)),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: const [
                                BoxShadow(
                                  color: kGrey,
                                  offset: Offset(0, 12),
                                  blurRadius: 16,
                                )
                              ]),
                          child: Column(
                            children: [
                              //email address text field
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 5, right: 16, left: 16),
                                child: TextField(
                                  controller: emailController,
                                  cursorColor: kBlue,
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.email,
                                        color: kBlue,
                                        size: 20,
                                      ),
                                      border: InputBorder.none,
                                      //placeholder text style
                                      labelText: "Email Address",
                                      hintStyle:
                                          kPrimaryText.copyWith(color: kGrey)),
                                  //typing text style
                                  style: kPrimaryText.copyWith(color: kBlack),
                                ),
                              ),

                              //password text field
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5, right: 16, left: 16),
                                child: TextField(
                                  controller: passwordController,
                                  cursorColor: kBlue,
                                  obscureText: true, //hide the typing text
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: kBlue,
                                        size: 20,
                                      ),
                                      border: InputBorder.none,
                                      //placeholder text style
                                      labelText: "Password",
                                      hintStyle:
                                          kPrimaryText.copyWith(color: kGrey)),
                                  //typing text style
                                  style: kPrimaryText.copyWith(color: kBlack),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        //async -> Changes the function to an asynchronous function. It runs this function asynchronously in the background
                        onTap: () {
                          Get.put(AuthController());
                          AuthController.instance.login(
                              emailController.text.trim(),
                              passwordController.text.trim());
                        },
                        child: Container(
                          child: Text(
                            'Login',
                            style: kPrimaryTextBold.copyWith(color: kWhite),
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kBlue),
                          height: 47,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                        text: "New to DeVsign? ",
                        style: kSecText.copyWith(color: kBlack),
                        children: [
                          TextSpan(
                              text: "Create Account!",
                              style: kSecTextBold.copyWith(color: kPink),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(() => SignUpScreen()))
                        ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
