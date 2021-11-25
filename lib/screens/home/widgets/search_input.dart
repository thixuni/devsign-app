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
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kGrey.withOpacity(0.2), width: 2)),
          child: TextField(
            cursorColor: kGrey,
            decoration: InputDecoration(
                fillColor: kGrey.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Search for courses...',
                hintStyle: TextStyle(color: kGrey)),
          ),
        ),
        Positioned(
          right: 45,
          top: 35,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: kBlue, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/icons/search.png',
              width: 25,
            ),
          ),
        )
      ],
    ));
  }
}
