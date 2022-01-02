import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  SectionTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText, style: Theme.of(context).textTheme.headline4),
          Text(rightText, style: kSecTextBold.copyWith(color: kBlue)),
        ],
      ),
    );
  }
}
