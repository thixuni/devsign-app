import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  String? password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kBackgroundColor,
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/login-bg-img.png',
              ),
              Container(
                transform: Matrix4.translationValues(0, -140, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Learn to\ndesign and code apps',
                      style: TextStyle(
                          fontSize: 26,
                          color: kLightBlue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Complete courses in your own pace\n and get the best knowledge!',
                      style: TextStyle(
                        fontSize: 14,
                        color: kLightBlue,
                      ),
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
                  const Text(
                    'Sign in to',
                    style: TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Text(
                    'Start Learning',
                    style: TextStyle(
                        color: kBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: const [
                                BoxShadow(
                                  color: kGrey,
                                  offset: Offset(0, 12),
                                  blurRadius: 16,
                                )
                              ]),
                          child: Column(
                            children: const [
                              //email address text field
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 5, right: 16, left: 16),
                                child: TextField(
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
                                      hintStyle: TextStyle(
                                          fontSize: 15, color: kGrey)),
                                  //typing text style
                                  style: TextStyle(color: kBlack),
                                ),
                              ),

                              //password text field
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5, right: 16, left: 16),
                                child: TextField(
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
                                      hintStyle: TextStyle(
                                          fontSize: 15, color: kGrey)),
                                  //typing text style
                                  style: TextStyle(color: kBlack),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        //async -> Changes the function to an asynchronous function. It runs this function asynchronously in the background
                        onTap: () async {
                          try {
                            await _auth.signInWithEmailAndPassword(
                                email: email.toString().trim(),
                                password: password.toString());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                  fullscreenDialog: false,
                                ));
                          } on FirebaseAuthException catch (err) {
                            if (err.code == "user-not-found") {
                              try {
                                await _auth
                                    .createUserWithEmailAndPassword(
                                        email: email.toString().trim(),
                                        password: password.toString())
                                    .then((user) => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage(),
                                                fullscreenDialog: false,
                                              )),
                                        });
                              } catch (err) {}
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Error"),
                                      content: Text(err.message.toString()),
                                      actions: [
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Okay"))
                                      ],
                                    );
                                  });
                            }
                          }
                        },
                        child: Container(
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              gradient: const LinearGradient(colors: [
                                Color(0xFF75B8FC),
                                Color(0xFF0180FF)
                              ])),
                          height: 47,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: const Text(
                        "No Account? Sign up today!",
                        style: TextStyle(
                          color: kGrey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}