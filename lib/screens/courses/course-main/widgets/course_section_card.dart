import 'package:course_app/screens/courses/course-files/course-files.dart';
import 'package:course_app/screens/courses/course-files/popular-courses.dart';
import 'package:flutter/material.dart';

class CourseSectionCard extends StatelessWidget {
  CourseSectionCard({required this.course});

  final CourseFiles course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 130.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41.0),
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).primaryColor,
                blurRadius: 20.0,
                offset: Offset(0, 10),
              ),
              BoxShadow(
                color: Theme.of(context).backgroundColor,
                blurRadius: 20.0,
                offset: Offset(0, 10),
              )
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.courseTitle,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            course.courseAuthor,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
