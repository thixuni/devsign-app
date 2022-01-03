import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';

class CourseCategories extends StatelessWidget {
  const CourseCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 5,
          ),
          Container(
            transform: Matrix4.translationValues(0, -30, 0),
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: kBlue.withOpacity(0.2),
            ),
            child: GestureDetector(
              child: Center(
                child: Text('UI/UX', style: kSecText.copyWith(color: kBlue)),
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -30, 0),
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: kBlue.withOpacity(0.2),
            ),
            child: GestureDetector(
              child: Center(
                child: Text('Web Dev', style: kSecText.copyWith(color: kBlue)),
              ),
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, -30, 0),
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: kBlue.withOpacity(0.2),
            ),
            child: GestureDetector(
              child: Center(
                child: Text('App Dev', style: kSecText.copyWith(color: kBlue)),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
