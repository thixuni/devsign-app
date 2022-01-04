import 'package:course_app/screens/courses/course-files.dart';
import 'package:course_app/screens/courses/course-main/widgets/course_sec.dart';
import 'package:flutter/material.dart';

class PremiumCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: premiumCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20.0 : 0.0),
            child: CourseSec(course: premiumCourses[index]),
          );
        },
      ),
    );
  }
}
