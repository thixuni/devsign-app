import 'package:course_app/screens/courses/course-detail/course-detail.dart';
import 'package:course_app/screens/courses/course-files.dart';
import 'package:course_app/screens/courses/course-main/widgets/course_sec.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularCoursesList extends StatelessWidget {
  late final CourseFiles? course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: popularCourses.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: CourseSec(course: popularCourses[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(course!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
