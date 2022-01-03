import 'package:course_app/app_theme/theme_service.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/courses/course-files/popular-courses.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:course_app/widgets/active_course.dart';
import 'package:course_app/screens/courses/course-main/widgets/course_sec.dart';
import 'package:course_app/widgets/custom_appbar.dart';
import 'package:course_app/widgets/search_input.dart';
import 'package:course_app/widgets/total_points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Container(
                        transform: Matrix4.translationValues(0, 10, 0),
                        child: RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Let\s boost your\nbrain power 🌟",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                SearchInput(),
                TotalPoints(),
                SizedBox(
                  height: 10,
                ),
                SectionTitle('Last Active Course', ' '),
                ActiveCourse(),
                SizedBox(
                  height: 10,
                ),
                SectionTitle('Popular Courses', 'View all'),
                SizedBox(
                  height: 20,
                ),
                PopularCourseList(),
                SizedBox(
                  height: 40,
                ),
              ])),
        ),
        appBar: CustomAppBar(
            key: null,
            title: const Text(
              'DeVsign',
              style: TextStyle(color: kGrey, fontSize: 14),
            ),
            appBar: AppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0,
            ),
            widgets: [
              Stack(
                children: [
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
                              color: kPink,
                            ),
                            onPressed: () {},
                          ),
                          GestureDetector(
                            child: IconButton(
                              icon: Icon(
                                (!isClicked) ? Icons.dark_mode : Icons.wb_sunny,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              onPressed: () {
                                if (isClicked == true) {
                                  setState(() {
                                    isClicked = false;
                                  });
                                } else {
                                  setState(() {
                                    isClicked = true;
                                  });
                                }
                                ThemeService().changeThemeMode();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]));
  }
}
