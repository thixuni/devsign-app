import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/custom_navbar.dart';
import 'package:course_app/screens/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//AuthController has to be global and accessible for all the other pages
class AuthController extends GetxController {
  //create an instance of it so it can be accessible
  static AuthController instance = Get.find();

  late Rx<User?> _user;

  //variable for firebase auth module
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);

    //user will be notified for any changes (signin, signup, logout)
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  //based on the change, the user should be taken into the specific page
  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginScreen());
    } else {
      Get.offAll(() => NavBar(email: user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About User", "User Message",
          backgroundColor: kOffWhite,
          snackPosition: SnackPosition.TOP,
          titleText: Text(
            "Accound Creation Failed",
            style: kPrimaryTextBold.copyWith(color: kBlue),
          ),
          messageText: Text(
            e.toString(),
            style: kPrimaryText,
          ));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "User Message",
          backgroundColor: kOffWhite,
          snackPosition: SnackPosition.TOP,
          titleText: Text(
            "Account Sign in Failed",
            style: kPrimaryTextBold.copyWith(color: kBlue),
          ),
          messageText: Text(
            e.toString(),
            style: kPrimaryText,
          ));
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
