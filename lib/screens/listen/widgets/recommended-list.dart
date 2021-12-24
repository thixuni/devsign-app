import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  final AudioFiles podcast;

  RecommendedList({required this.podcast});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.0,
        margin: EdgeInsets.only(right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
                elevation: 8.0,
                shadowColor: kBlack,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(podcast.image), fit: BoxFit.cover),
                    ))),
            SizedBox(height: 10),
            Text(
              podcast.title,
              overflow: TextOverflow.ellipsis,
              style: kPrimaryTextBold,
            ),
            Text(podcast.artist, style: kSecText),
          ],
        ));
  }
}
