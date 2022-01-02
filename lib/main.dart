import 'package:course_app/app_theme/theme_service.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/signin.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'package:course_app/app_theme/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //async -> Changes the function to an asynchronous function. It runs this function asynchronously in the background
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: kBlue));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      color: kWhite,
      home: LoginScreen(),
    );
  }
}
