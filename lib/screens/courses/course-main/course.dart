import 'package:course_app/app_theme/theme_service.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/courses/course-files/popular-courses.dart';
import 'package:course_app/screens/courses/course-main/featured_courses.dart';
import 'package:course_app/screens/courses/course-main/widgets/course-categories.dart';
import 'package:course_app/screens/home/home.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:course_app/screens/courses/course-main/widgets/course_sec.dart';
import 'package:course_app/widgets/custom_appbar.dart';
import 'package:course_app/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesPage extends StatefulWidget {
  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
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
                          text: "What do you want\nto Learn today? 💻",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            SearchInput(),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text("Categories",
                      style: Theme.of(context).textTheme.headline4),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            CourseCategories(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured Courses",
                      style: Theme.of(context).textTheme.headline4),
                  TextButton(
                      onPressed: () {
                        Get.to(FeaturedCourses());
                      },
                      child: Text("View All",
                          style: kSecTextBold.copyWith(color: kBlue)))
                ],
              ),
            ),
            PopularCourseList(),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Premium Courses",
                      style: Theme.of(context).textTheme.headline4),
                  TextButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      child: Text("View All",
                          style: kSecTextBold.copyWith(color: kBlue)))
                ],
              ),
            ),
            PopularCourseList(),
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
