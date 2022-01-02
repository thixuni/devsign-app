import 'package:course_app/screens/courses/course-files.dart';
import 'package:flutter/material.dart';
import '../../home/widgets/category_title.dart';
import '../../home/widgets/course_item.dart';

class FeaturedCourses extends StatelessWidget {
  final CoursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 300,
          child: ListView.separated(
            padding: EdgeInsets.all(25),
            scrollDirection: Axis.horizontal,
            itemCount: CoursesList.length,
            itemBuilder: (context, index) => CourseItem(CoursesList[index]),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 10,
            ),
          ),
        )
      ],
    ));
  }
}
