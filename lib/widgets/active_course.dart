import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../screens/home/widgets/category_title.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Last Active Course', 'View all'),
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: kOffWhite,
                border: Border.all(color: kGrey, width: 0.5),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Course Name', style: kTertiaryTitleBold),
                            Text('2 lessons left', style: kTertiaryText),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
                CircularPercentIndicator(
                  progressColor: kPink,
                  backgroundColor: kGrey,
                  radius: 60.0,
                  lineWidth: 8.0,
                  percent: 0.61,
                  center: const Text(
                    '61%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
