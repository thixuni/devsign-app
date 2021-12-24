import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:course_app/screens/listen/widgets/inspiration-list.dart';
import 'package:course_app/screens/listen/widgets/recommended-list.dart';
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
                      style: kMainTitleStyle,
                    )
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
          child: const TextField(
            cursorColor: kBlue,
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
              Text(
                "Recommended for you",
                style: kSecText,
              ),
              Spacer(),
              Text(
                "View All",
                style: kSecText,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          width: double.infinity,
          height: 265.0,
          margin: EdgeInsets.only(left: 18.0),
          child: ListView.builder(
              itemCount: RecList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                var recommend = RecList[index];
                return RecommendedList(podcast: recommend);
              }),
        ),
        SizedBox(height: 40.0),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Text(
                  "Inspirational Podcasts",
                  style: kSecText,
                ),
                Spacer(),
                Text(
                  "View All",
                  style: kSecText,
                ),
              ],
            )),

        Container(
            child: ListView.builder(
                itemCount: Inspiration.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var insp = Inspiration[index];
                  return InspirationList(podcast: insp);
                }))
      ],
    )));
  }
}
