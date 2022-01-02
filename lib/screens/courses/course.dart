import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/courses/course-files.dart';
import 'package:course_app/screens/home/widgets/course_item.dart';
import 'package:course_app/widgets/search_input.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  final CoursesList = Course.generateCourses();

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
                      text: "What do you want\nto Learn today? ",
                      style: kMainTitle,
                    ),
                    TextSpan(text: ' 💻', style: kPrimaryTitleBold)
                  ],
                )),
              )
            ],
          ),
        ),
        SearchInput(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            "Categories",
            style: kSecText,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
      ]))),
    );
  }
}
