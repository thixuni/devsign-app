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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                border: Border.all(color: kGrey, width: 0.5),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Course Name',
                                style: Theme.of(context).textTheme.bodyText1),
                            Text('2 lessons left',
                                style: Theme.of(context).textTheme.subtitle2),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  width: 100,
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
