import 'package:course_app/model/course.dart';
import 'package:flutter/material.dart';

import 'course_desc.dart';
import 'course_progress.dart';
import 'custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  DetailPage(this.course);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDesc(course),
            CourseProgress()
          ],
        ),
      ),
    );
  }
}
