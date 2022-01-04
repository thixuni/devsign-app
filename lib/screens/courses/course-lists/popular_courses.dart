import 'package:course_app/app_theme/theme_service.dart';
import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course-files.dart';
import 'package:course_app/screens/courses/course-main/widgets/course_section_card.dart';
import 'package:course_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class PopularCourses extends StatefulWidget {
  const PopularCourses({Key? key}) : super(key: key);

  @override
  State<PopularCourses> createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  child: RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Popular Courses 😎",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  )),
                ),
                CourseSectionList(),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
        appBar: CustomAppBar(
          key: null,
          appBar: AppBar(),
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
          ],
          title: const Text(
            'Courses',
            style: TextStyle(color: kGrey, fontSize: 14),
          ),
        ));
  }
}

class CourseSectionList extends StatefulWidget {
  @override
  State<CourseSectionList> createState() => _CourseSectionListState();
}

class _CourseSectionListState extends State<CourseSectionList> {
  List<Widget> courseSectionsWidgets() {
    List<Widget> cards = [];
    for (var CourseFiles in popularCoursesSection) {
      cards.add(Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: CourseSectionCard(
          course: CourseFiles,
        ),
      ));
    }

    cards.add(
      Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: Text(
          "No more Courses to view!",
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionsWidgets(),
      ),
    );
  }
}
