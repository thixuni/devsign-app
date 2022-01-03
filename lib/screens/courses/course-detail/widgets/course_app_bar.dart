import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course-files/course-files.dart';
import 'package:course_app/screens/courses/course-files/popular-courses.dart';
import 'package:flutter/material.dart';

class CourseAppBar extends StatelessWidget {
  final CourseFiles course;
  CourseAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      course.illustration,
                      fit: BoxFit.cover,
                    ),
                  )),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
                height: 50,
                width: 110,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kBlue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text('Enrol'),
                )),
          ),
          Positioned(
            top: 75,
            left: 25,
            child: Container(
              padding: EdgeInsets.only(left: 5),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kBlue,
                  ),
                  iconSize: 20,
                  onPressed: () => Navigator.of(context).pop()),
            ),
          ),
          Positioned(
            top: 75,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
                iconSize: 20,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
