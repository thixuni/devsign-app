import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/course.dart';
import 'package:course_app/screens/home/widgets/active_course.dart';
import 'package:course_app/screens/home/widgets/emoji.dart';
import 'package:course_app/screens/home/widgets/featured_courses.dart';
import 'package:course_app/screens/home/widgets/search_input.dart';
import 'package:course_app/screens/listen/listen.dart';
import 'package:course_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _viewList = [
    HomePage(),
    CoursesPage(),
    PodcastPage(),
    ProfilePage(),
  ];

  onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        //child: _viewList.elementAt(_selectedIndex),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              EmojiText(),
              SearchInput(),
              FeaturedCourses(),
              ActiveCourse(),
            ]),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      unselectedItemColor: kBlack,
      selectedItemColor: kBlue,
      onTap: onTappedItem,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            size: 25,
          ),
        ),
        BottomNavigationBarItem(
            label: 'explore',
            icon: Icon(
              Icons.school,
              size: 25,
            )),
        BottomNavigationBarItem(
            label: 'listen',
            icon: Icon(
              Icons.headset,
              size: 25,
            )),
        BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(
              Icons.manage_accounts_sharp,
              size: 25,
            )),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: const Text(
          'Hello Thisuni',
          style: TextStyle(color: kGrey, fontSize: 14),
        ),
        actions: [
          Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: kGrey.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 25,
              ),
            ),
            //The notification alert circle will be here
          ])
        ]);
  }
}
