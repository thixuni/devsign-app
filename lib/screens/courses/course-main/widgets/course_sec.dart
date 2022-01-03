import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course-files/course-files.dart';

import 'package:flutter/material.dart';

class CourseSec extends StatelessWidget {
  CourseSec({required this.course});

  final CourseFiles course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        //borderRadius: BorderRadius.circular(41.0),
        child: Container(
          height: 120.0,
          width: 300.0,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: kGrey, width: 0.5),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseAuthor,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      SizedBox(height: 6.0),
                      Text(
                        course.courseTitle,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/illustrations/${course.illustration}',
                        fit: BoxFit.cover, height: 100.0)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
