import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:course_app/constants/fonts.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: 'Let\s boost your\nbrain power',
          style: kMainTitleStyle,
        ),
        TextSpan(
            text: ' 🌟',
            style: TextStyle(
              fontSize: 25,
            ))
      ])),
    );
  }
}
