import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';

class TotalPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Points Collected ✨",
                                    style: kTertiaryTitleBold.copyWith(
                                        color: kBlue),
                                  ),
                                  Text(
                                      'You can use these points to access\nPremium Courses!',
                                      style: kTertiaryText),
                                ]),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "187",
                              style: kMainTitle.copyWith(color: kPink),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
