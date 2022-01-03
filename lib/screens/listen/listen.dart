import 'package:course_app/app_theme/theme_service.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/screens/home/widgets/category_title.dart';
import 'package:course_app/screens/listen/audio-files.dart';
import 'package:course_app/screens/listen/widgets/inspiration-list.dart';
import 'package:course_app/screens/listen/widgets/play_view.dart';
import 'package:course_app/screens/listen/widgets/recommended-list.dart';
import 'package:course_app/widgets/custom_appbar.dart';
import 'package:course_app/widgets/search_input.dart';
import 'package:flutter/material.dart';

class PodcastPage extends StatefulWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  State<PodcastPage> createState() => _PodcastPageState();
}

class _PodcastPageState extends State<PodcastPage> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                      transform: Matrix4.translationValues(0, 10, 0),
                      child: RichText(
                          text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Get some Inspiration\nto study",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          TextSpan(text: ' 🎧', style: kPrimaryTitleBold)
                        ],
                      )))
                ],
              ),
            ),
            SearchInput(),
            SizedBox(
              height: 30,
            ),
            SectionTitle('Popular Today', 'View all'),
            SizedBox(
              height: 10.0,
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
            SectionTitle('Inspirational Podcasts', 'View all'),
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
                                    builder: (context) =>
                                        PlayView(podcast: insp)));
                          },
                          child: InspirationList(podcast: insp));
                    }))
          ],
        ))),
        appBar: CustomAppBar(
            key: null,
            title: const Text(
              'Audio',
              style: TextStyle(color: kGrey, fontSize: 14),
            ),
            appBar: AppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              elevation: 0,
            ),
            widgets: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 20),
                    padding: EdgeInsets.all(4),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.notifications,
                              //size: 40,
                              color: kPink,
                            ),
                            onPressed: () {},
                          ),
                          GestureDetector(
                            child: IconButton(
                              icon: Icon(
                                (!isClicked) ? Icons.dark_mode : Icons.wb_sunny,
                                color: Theme.of(context).iconTheme.color,
                              ),
                              onPressed: () {
                                if (isClicked == true) {
                                  setState(() {
                                    isClicked = false;
                                  });
                                } else {
                                  setState(() {
                                    isClicked = true;
                                  });
                                }
                                ThemeService().changeThemeMode();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]));
  }
}
