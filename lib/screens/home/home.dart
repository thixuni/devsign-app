import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widgets/active_course.dart';
import 'package:course_app/screens/home/widgets/emoji.dart';
import 'package:course_app/screens/home/widgets/featured_courses.dart';
import 'package:course_app/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              EmojiText(),
              SearchInput(),
              FeaturedCourses(),
              ActiveCourse(),
            ]),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            label: 'home',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: kBlue,
                width: 2,
              ))),
              child: const Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        BottomNavigationBarItem(
            label: 'explore',
            icon: Image.asset(
              'assets/icons/avatar.png',
              width: 20,
            )),
        BottomNavigationBarItem(
            label: 'listen',
            icon: Image.asset(
              'assets/icons/avatar.png',
              width: 20,
            )),
        BottomNavigationBarItem(
            label: 'profile',
            icon: Image.asset(
              'assets/icons/avatar.png',
              width: 20,
            )),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kBlack,
        elevation: 0,
        title: const Text(
          'Hello Thisuni',
          style: TextStyle(color: kGrey, fontSize: 14),
        ),
        actions: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: kGrey.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 25,
              ),
            ),
            //The notification alert circle will be here
          ])
        ]);
  }
}
