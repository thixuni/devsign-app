import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course.dart';
import 'package:course_app/screens/home/home.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:course_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

enum NavBarIcons { Home, Courses, Audio, Profile }

class _NavBarState extends State<NavBar> {
  NavBarIcons navBarIcons = NavBarIcons.Home;
  int currentIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    HomePage(),
    CoursesPage(),
    PodcastPage(),
    ProfilePage()
  ];

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          child: widgetOptions.elementAt(currentIndex),
        ),
        bottomNavigationBar: BottomNavyBar(
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text("Home"),
                icon: Icon(
                  Icons.home_rounded,
                  size: 25,
                ),
                textAlign: TextAlign.center,
                activeColor: kBlue,
                inactiveColor: kBlack),
            BottomNavyBarItem(
                title: Text("Courses"),
                icon: Icon(
                  Icons.school_rounded,
                  size: 25,
                ),
                textAlign: TextAlign.center,
                activeColor: kBlue,
                inactiveColor: kBlack),
            BottomNavyBarItem(
                title: Text("Listen"),
                icon: Icon(
                  Icons.headset_rounded,
                  size: 25,
                ),
                textAlign: TextAlign.center,
                activeColor: kBlue,
                inactiveColor: kBlack),
            BottomNavyBarItem(
                title: Text("Profile"),
                icon: Icon(
                  Icons.person_rounded,
                  size: 25,
                ),
                textAlign: TextAlign.center,
                activeColor: kBlue,
                inactiveColor: kBlack),
          ],
        ));
  }
}