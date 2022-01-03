import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:flutter/material.dart';

class PlayView extends StatefulWidget {
  final AudioFiles podcast;
  PlayView({required this.podcast});

  @override
  _PlayViewState createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  double progressPodcast = 0;
  bool isPlay = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kBlue,
            ),
            iconSize: 20,
            onPressed: () => Navigator.pop(context)),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.more_vert,
              color: kBlue,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.podcast.image,
                        ),
                        fit: BoxFit.cover,
                      ))),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(widget.podcast.title,
                style: Theme.of(context).textTheme.headline3),
            Text(widget.podcast.artist,
                style: Theme.of(context).textTheme.bodyText2),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    (!isLiked) ? Icons.favorite_border : Icons.favorite,
                    size: 25,
                    color: kBlue,
                  ),
                  onPressed: () {
                    if (isLiked == true) {
                      setState(() {
                        this.isLiked = false;
                      });
                    } else {
                      setState(() {
                        this.isLiked = true;
                      });
                    }
                  },
                ),
                SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.download_for_offline_outlined,
                    size: 25,
                    color: kBlue,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
                IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    size: 25,
                    color: kBlue,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            ),
            Slider(
              value: progressPodcast,
              max: 1.0,
              min: 0.0,
              activeColor: kBlue,
              onChanged: (val) {
                setState(() {
                  progressPodcast = val;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  children: [
                    Text(
                      "00.00",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Spacer(),
                    Text(
                      "05.28",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.fast_rewind_rounded, size: 40),
                    onPressed: () {},
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (isPlay == true) {
                        setState(() {
                          this.isPlay = false;
                        });
                      } else {
                        setState(() {
                          this.isPlay = true;
                        });
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: kBlue,
                      ),
                      child: Container(
                        child: Icon(
                          (!isPlay) ? Icons.play_arrow_rounded : Icons.pause,
                          size: 40,
                          color: kLightBlue,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.fast_forward_rounded, size: 40),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
