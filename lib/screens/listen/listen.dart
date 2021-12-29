import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:course_app/screens/listen/widgets/inspiration-list.dart';
import 'package:course_app/screens/listen/widgets/play_view.dart';
import 'package:course_app/screens/listen/widgets/recommended-list.dart';
import 'package:course_app/widgets/search_input.dart';
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
                      text: "Get some Inspiration\nto study",
                      style: kMainTitle,
                    ),
                    TextSpan(text: ' 🎧', style: kPrimaryTitleBold)
                  ],
                ))
              ],
            ),
          ),
        ),
        SearchInput(),
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
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PlayView(podcast: recommend)));
                    },
                    child: RecommendedList(podcast: recommend));
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
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayView(podcast: insp)));
                      },
                      child: InspirationList(podcast: insp));
                }))
      ],
    )));
  }
}
