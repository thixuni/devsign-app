import 'package:course_app/constants/colors.dart';
import 'package:course_app/constants/fonts.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var profileHeader = Column(children: <Widget>[
      // SizedBox(
      //   height: 10.0,
      // ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 140.0,
              width: 140.0,
              margin: EdgeInsets.only(top: 60.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 35.0,
                        width: 35.0,
                        decoration: const BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: kLightBlue,
                          size: 20,
                        ),
                      ))
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
        style: kSecTitleStyleBold,
      ),
      Text(
        'thisu.chamathka@gmail.com',
        style: kSecText,
      ),
    ]);

    //check how to collect points and use them

    return Scaffold(
        body: Column(children: <Widget>[
      profileHeader,
      Expanded(
          child: ListView(
        children: <Widget>[
          ProfileListItem(
            icon: Icons.school_outlined,
            text: 'My Progress',
          ),
          ProfileListItem(
            icon: Icons.manage_accounts_outlined,
            text: 'Profile Settings',
          ),
          ProfileListItem(
            icon: Icons.notifications_none_outlined,
            text: 'Notifications', //add toggle
            hasNavigation: false,
          ),
          ProfileListItem(
            icon: Icons.help_outline,
            text: 'Help & Support',
          ),
        ],
      )),
      Container(
        transform: Matrix4.translationValues(0, -30, 0),
        height: 40.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: kBlue,
        ),
        child: Center(
          child: Text('Logout', style: kPrimaryTextBold),
        ),
      )
    ]));
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final text;
  final bool hasNavigation;

  const ProfileListItem({
    Key? key,
    required this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      margin: EdgeInsets.symmetric(horizontal: 40.0).copyWith(bottom: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: kOffWhite,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            this.icon,
            size: 25.0,
            color: kBlue,
          ),
          SizedBox(
            width: 25.0,
          ),
          Text(
            this.text,
            style: kPrimaryTextBold,
          ),
          Spacer(),
          if (this.hasNavigation)
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25.0,
              ),
              onPressed: () {},
            )
        ],
      ),
    );
  }
}
