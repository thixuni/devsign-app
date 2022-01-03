import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:flutter/material.dart';

class InspirationList extends StatelessWidget {
  final AudioFiles podcast;

  InspirationList({required this.podcast});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6.0,
        shadowColor: Theme.of(context).backgroundColor,
        margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: double.infinity,
          height: 120.0,
          padding: EdgeInsets.all(12.0),
          child: Row(children: [
            Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: AssetImage(podcast.image), fit: BoxFit.cover),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.0,
                        vertical: 5.0,
                      ),
                      decoration: BoxDecoration(
                        color: kBlue.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        podcast.genre,
                        style: kTertiaryText.copyWith(color: kBlue),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    podcast.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("By ${podcast.artist}",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2)
                ],
              ),
            )),
            Center(
              child: CircleAvatar(
                radius: 15.0,
                backgroundColor: kBlue.withOpacity(.1),
                child: Icon(
                  Icons.play_arrow,
                  color: kBlue,
                  size: 20,
                ),
              ),
            )
          ]),
        ));
  }
}
