import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.grey,
    backgroundColor: kLightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: kLightBackground,
    ),
    bottomAppBarColor: kLightBlue,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kBlack),
    textTheme: TextTheme(
      headline1: kMainTitle.copyWith(color: kBlack),
      headline2: kPrimaryTitleBold.copyWith(color: kBlack),
      headline3: kSecTitleBold.copyWith(color: kBlack),
      headline4: kTertiaryTitleBold.copyWith(color: kBlack),
      headline5: kPrimaryTextBold.copyWith(color: kBlack),
      headline6: kSecTextBold.copyWith(color: kBlack),
      subtitle1: kTertiaryTextBold.copyWith(color: kBlack),
      subtitle2: kTertiaryText.copyWith(color: kBlack),
      bodyText1: kPrimaryText.copyWith(color: kBlack),
      bodyText2: kSecText.copyWith(color: kBlack),
    ),
    buttonTheme:
        ButtonThemeData(buttonColor: kBlue, disabledColor: Colors.black),
  );

  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kDarkBackground,
    primaryColor: Colors.blueGrey[900],
    backgroundColor: kDarkBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: kDarkBackground,
    ),
    bottomAppBarColor: kDarkBlue,
    iconTheme: IconThemeData(color: kWhite),
    textTheme: TextTheme(
      headline1: kMainTitle.copyWith(color: kWhite),
      headline2: kPrimaryTitleBold.copyWith(color: kWhite),
      headline3: kSecTitleBold.copyWith(color: kWhite),
      headline4: kTertiaryTitleBold.copyWith(color: kWhite),
      headline5: kPrimaryTextBold.copyWith(color: kWhite),
      headline6: kSecTextBold.copyWith(color: kWhite),
      subtitle1: kTertiaryTextBold.copyWith(color: kWhite),
      subtitle2: kTertiaryText.copyWith(color: kWhite),
      bodyText1: kPrimaryText.copyWith(color: kWhite),
      bodyText2: kSecText.copyWith(color: kWhite),
    ),
    buttonTheme:
        ButtonThemeData(buttonColor: kWhite, disabledColor: Colors.black),
  );
}
