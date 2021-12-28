import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:course_app/screens/profile/profile.dart';
import 'package:course_app/screens/home/home.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:course_app/screens/courses/course.dart';

BottomNavigationBar buildBottomNavigationBar() {
  var _selectedIndex;
  var onTappedItem;
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: kBackgroundColor,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    currentIndex: _selectedIndex,
    unselectedItemColor: kBlack,
    selectedItemColor: kBlue,
    onTap: onTappedItem,
    items: [
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(
          Icons.home,
          size: 25,
        ),
      ),
      BottomNavigationBarItem(
          label: 'explore',
          icon: Icon(
            Icons.school,
            size: 25,
          )),
      BottomNavigationBarItem(
          label: 'listen',
          icon: Icon(
            Icons.headset,
            size: 25,
          )),
      BottomNavigationBarItem(
          label: 'profile',
          icon: Icon(
            Icons.manage_accounts_sharp,
            size: 25,
          )),
    ],
  );
}
