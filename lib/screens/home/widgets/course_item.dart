import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course-files.dart';
import 'package:course_app/screens/courses/detail.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular((20))),
            child: Column(children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(course.courseImg, fit: BoxFit.fitWidth),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset(course.authorImage, width: 20),
                        SizedBox(width: 5),
                        Text(course.authorName, style: TextStyle(fontSize: 14))
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(course.courseTitle,
                            style: const TextStyle(
                                fontSize: 16,
                                color: kBlack,
                                fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: kBlue, shape: BoxShape.circle),
                        ),
                        const Text('2h 22min',
                            style: TextStyle(
                                fontSize: 12,
                                color: kGrey,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kBlue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailPage(course)));
                },
                child: Text('Start')),
          )
        ],
      ),
    );
  }
}
