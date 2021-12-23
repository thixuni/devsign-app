import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Listen to Podcasts",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          color: kBlue,
                        ))
                  ],
                ))
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 20,
        // ),
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
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Text("Recommended for you",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: kLightBlue,
                  ))
            ],
          ),
        )
      ],
    )));
  }
}
