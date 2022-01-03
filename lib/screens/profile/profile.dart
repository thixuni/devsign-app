import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:course_app/controllers/auth_controller.dart';
import 'package:course_app/screens/profile/about.dart';
import 'package:course_app/screens/profile/help&support.dart';
import 'package:course_app/screens/profile/progress.dart';
import 'package:course_app/screens/profile/profileSettings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  String email;
  ProfilePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var profileHeader = Column(children: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 140.0,
              width: 140.0,
              margin: EdgeInsets.only(top: 20.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  // Align(
                  //     alignment: Alignment.bottomRight,
                  //     child: Container(
                  //       height: 35.0,
                  //       width: 35.0,
                  //       decoration: const BoxDecoration(
                  //         color: kBlue,
                  //         shape: BoxShape.circle,
                  //       ),
                  //       child: const Icon(
                  //         Icons.edit,
                  //         color: kLightBlue,
                  //         size: 20,
                  //       ),
                  //     ))
                ],
              ),
            ),
            SizedBox(
              width: 0,
            ),
          ]),
      SizedBox(
        height: 10,
      ),
      Text(
        'Thisuni Gunawardena',
        style: Theme.of(context).textTheme.headline3,
      ),
      Text(
        'thisu.chamathka@gmail.com',
        style: kSecText.copyWith(color: kGrey),
      ),
      SizedBox(
        height: 15.0,
      )
    ]);

    //check how to collect points and use them

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            profileHeader,
            //My Progress
            Container(
              height: 55.0,
              margin:
                  EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).backgroundColor,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.school_outlined,
                    size: 25.0,
                    color: kBlue,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'My Progress',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25.0,
                    ),
                    onPressed: () {
                      Get.to(userProgress());
                    },
                  )
                ],
              ),
            ),

            //Profile Settings
            Container(
              height: 55.0,
              margin:
                  EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).backgroundColor,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person_outline_rounded,
                    size: 25.0,
                    color: kBlue,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Profile Settings',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25.0,
                    ),
                    onPressed: () {
                      Get.to(profileSettings());
                    },
                  )
                ],
              ),
            ),

            //notifications
            Container(
              height: 55.0,
              margin:
                  EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).backgroundColor,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.notifications_none_outlined,
                    size: 25.0,
                    color: kBlue,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Notifications',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  //toggle
                ],
              ),
            ),

            //Help & Support
            Container(
              height: 55.0,
              margin:
                  EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).backgroundColor,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.help_outline,
                    size: 25.0,
                    color: kBlue,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Help & Support',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25.0,
                    ),
                    onPressed: () {
                      Get.to(helpSupport());
                    },
                  )
                ],
              ),
            ),

            //About
            Container(
              height: 55.0,
              margin:
                  EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).backgroundColor,
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.info_outline,
                    size: 25.0,
                    color: kBlue,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Aboout DeVsign',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25.0,
                    ),
                    onPressed: () {
                      Get.to(about());
                    },
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //Logout btn
            Container(
              transform: Matrix4.translationValues(0, -30, 0),
              height: 40.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: kBlue,
              ),
              child: GestureDetector(
                onTap: () {
                  AuthController.instance.logout();
                },
                child: Center(
                  child: Text('Logout', style: kPrimaryTextBold),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
