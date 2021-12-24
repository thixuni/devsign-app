import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          //check what to add for the stack
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: kBlue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: kLightBlue,
                        size: 20,
                      ),
                    ))
              ],
            ),
          )
        ])
      ],
    ));
  }
}
