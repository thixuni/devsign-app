import 'package:course_app/constants/colors.dart';
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
          Row(children: [
            Image.asset(
              course.authorImage,
              width: 30,
            ),
            Text(
              course.authorName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 5,
              width: 5,
              decoration: BoxDecoration(color: kGrey, shape: BoxShape.circle),
            ),
            Icon(
              Icons.access_time_filled,
              color: kBlue,
              size: 30,
            ),
            SizedBox(
              width: 5,
            ),
            const Text(
              '2h 22min',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: kGrey,
              ),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Text(course.courseTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kBlack,
              )),
          SizedBox(height: 10),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit sollicitudin enim, eget congue mi mollis in. Vestibulum lacus leo, pulvinar a magna elementum, elementum malesuada purus.",
            style: TextStyle(wordSpacing: 2, color: kGrey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
