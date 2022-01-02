import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/app_theme/themes.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 10),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: 'Let\s boost your\nbrain power',
          style: Theme.of(context).textTheme.headline1,
        ),
        TextSpan(text: ' 🌟', style: kPrimaryTitleBold)
      ])),
    );
  }
}
