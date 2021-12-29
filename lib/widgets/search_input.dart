import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kBlue.withOpacity(0.2), width: 1)),
          child: TextField(
            cursorColor: kGrey,
            decoration: InputDecoration(
                fillColor: kLightBlue,
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for Podcasts...',
                hintStyle: TextStyle(color: kGrey),
                suffixIcon: Icon(
                  Icons.search,
                  color: kBlue,
                  size: 25,
                )),
          ),
        ),
      ],
    ));
  }
}
