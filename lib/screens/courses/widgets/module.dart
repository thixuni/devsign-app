import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lesson;

  Module(
      this.iconBorder,
      this.iconBg,
      this.iconColor,
      this.icon,
      this.title,
      this.buttonColor,
      this.buttonFont,
      this.desc,
      this.lesson,
      this.moduleBg,
      this.moduleBorder,
      this.time);

  static List<Module> generateModules() {
    return [
      //Module(iconBorder, iconBg, iconColor, icon, title, buttonColor, buttonFont, desc, lesson, moduleBg, moduleBorder, time)
      Module(
          kLightBlue,
          kBlue,
          kLightBackground,
          Icons.play_arrow_rounded,
          'Module 1',
          kBlue,
          kBlack,
          'Lorem Ipsum blah blah blah blah blah blah',
          '2 Lessons',
          kLightBlue,
          kGrey,
          '22 min'),
      Module(
          kLightBlue,
          kGrey,
          kLightBackground,
          Icons.lock_outline_rounded,
          'Module 2',
          kBlue,
          kBlack,
          'Lorem Ipsum blah blah blah blah blah blah',
          '4 Lessons',
          Colors.white,
          kGrey,
          '12 min'),
    ];
  }
}
