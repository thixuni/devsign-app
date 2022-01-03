import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'package:course_app/widgets/active_course.dart';
import 'package:course_app/widgets/total_points.dart';
import 'package:flutter/material.dart';

class userProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    transform: Matrix4.translationValues(0, 10, 0),
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: "My Progress 🚀",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActiveCourse(),
            TotalPoints(),
          ],
        ),
      )),
    );
  }
}
