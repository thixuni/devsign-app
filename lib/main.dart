import 'package:course_app/screens/home/home.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:course_app/screens/profile/profile.dart';
import 'package:course_app/screens/signin.dart';
import 'package:course_app/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// Future<void> main() async {
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //How to add the dark theme here?
      theme: ThemeData(fontFamily: 'Poppins'),
      home: ProfilePage(),
    );
  }
}
