import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'category_title.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently Active', 'View all'),
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: kLightBlue,
                border: Border.all(color: kGrey, width: 0.2),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/progress.png',
                        width: 60,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Symmetry Theory',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kBlack,
                          ),
                        ),
                        Text(
                          '2 lessons left',
                          style: TextStyle(
                            fontSize: 14,
                            color: kGrey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                CircularPercentIndicator(
                  progressColor: kBlue,
                  backgroundColor: kGrey,
                  radius: 60.0,
                  lineWidth: 5.0,
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
