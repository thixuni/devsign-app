import 'package:course_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText,
              style: TextStyle(
                  fontSize: 15, color: kBlack, fontWeight: FontWeight.bold)),
          Text(
            rightText,
            style: TextStyle(
                fontWeight: FontWeight.w200, color: kBlack, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
