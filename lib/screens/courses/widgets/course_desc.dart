import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/courses/course-files.dart';
import 'package:flutter/material.dart';

class CourseDesc extends StatelessWidget {
  final Course course;
  CourseDesc(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(course.courseTitle, style: kSecTitleBold),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Text(
              course.authorName,
              style: kSecTextBold.copyWith(color: kPink),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 5,
              width: 5,
              decoration: BoxDecoration(color: kPink, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '2h 22min',
              style: kSecTextBold.copyWith(color: kPink),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 5,
              width: 5,
              decoration: BoxDecoration(color: kPink, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '150 points',
              style: kSecTextBold.copyWith(color: kPink),
            ),
          ]),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sollicitudin enim, eget congue mi mollis in. Vestibulum lacus leo, pulvinar a magna elementum, elementum malesuada purus.",
            style: kSecText,
          )
        ],
      ),
    );
  }
}
