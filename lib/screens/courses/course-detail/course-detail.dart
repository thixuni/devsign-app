import 'package:course_app/screens/courses/course-files/course-files.dart';
import 'package:course_app/screens/courses/course-files/popular-courses.dart';
import 'package:flutter/material.dart';
import 'widgets/course_desc.dart';
import 'widgets/course_progress.dart';
import 'widgets/course_app_bar.dart';

class DetailPage extends StatelessWidget {
  final CourseFiles course;
  DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CourseAppBar(course),
            CourseDesc(course),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}
