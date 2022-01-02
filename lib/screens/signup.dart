import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'home/home.dart';

class SignUpScreen extends GetWidget<AuthController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                'assets/images/signup-bg-img.png',
              ),
              Container(
                transform: Matrix4.translationValues(0, -110, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Learn to\ndesign and code',
                      style: kMainTitle.copyWith(color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Complete courses in your own pace\n and get the best knowledge!',
                      style: kSecText.copyWith(color: kWhite),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            transform: Matrix4.translationValues(0, -90, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 53),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Create your',
                    style: kPrimaryTitleBold,
                  ),
                  Text(
                    'DeVsign Account',
                    style: kPrimaryTitleBold.copyWith(color: kPink),
                  ),
                  SizedBox(height: 20),
                  Container(
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
                              //name text field
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 5, right: 16, left: 16),
                                child: TextField(
                                  cursorColor: kBlue,
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.person,
                                        color: kBlue,
                                        size: 20,
                                      ),
                                      border: InputBorder.none,
                                      //placeholder text style
                                      labelText: "Full name",
                                      hintStyle:
                                          kPrimaryText.copyWith(color: kGrey)),
                                  //typing text style
                                  style: kPrimaryText.copyWith(color: kBlack),
                                ),
                              ),

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
                                    top: 5, right: 16, left: 16),
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
                                      labelText: "Create Password",
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
                    height: 20,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.put(AuthController());
                          AuthController.instance.register(
                              emailController.text.trim(),
                              passwordController.text.trim());
                        },
                        child: Container(
                          child: Text(
                            'Sign up',
                            style: kPrimaryTextBold.copyWith(color: kWhite),
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kBlue),
                          height: 47,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                        text: "Already have an Acount?  ",
                        style: kSecText.copyWith(color: kBlack),
                        children: [
                          TextSpan(
                              text: "Sign in!",
                              style: kSecTextBold.copyWith(color: kPink),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.back())
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
