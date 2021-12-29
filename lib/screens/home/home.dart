import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course.dart';
import 'package:course_app/screens/custom_navbar.dart';
import 'package:course_app/widgets/active_course.dart';
import 'package:course_app/screens/home/widgets/emoji.dart';
import 'package:course_app/screens/home/widgets/featured_courses.dart';
import 'package:course_app/widgets/search_input.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:course_app/screens/profile/profile.dart';
import 'package:course_app/widgets/total_points.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        //child: _viewList.elementAt(_selectedIndex),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              EmojiText(),
              SearchInput(),
              TotalPoints(),
              ActiveCourse(),
              FeaturedCourses(),
            ]),
      ),
      // bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kBackgroundColor,
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
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            //size: 40,
                            color: kGrey,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.wb_sunny,
                            //size: 40,
                            color: kGrey,
                          ),
                          onPressed: () {},
                        ),
                      ])),
            )

            //The notification alert circle will be here
          ])
        ]);
  }
}
