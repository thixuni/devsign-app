import 'package:course_app/constants/colors.dart';
import 'package:course_app/model/module.dart';
import 'package:flutter/material.dart';

class CourseModules extends StatelessWidget {
  final Module module;
  CourseModules(this.module);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(children: [
        Flexible(
          flex: 1,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    module.icon,
                    size: 30,
                    color: module.iconColor,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: module.iconBorder, width: 2),
                      color: module.iconBg,
                      shape: BoxShape.circle),
                ),
                Expanded(
                    child: Column(
                  children: List.generate(
                      20,
                      (index) => Expanded(
                            child: Container(
                              width: 2,
                              color: index % 2 == 0
                                  ? Colors.transparent
                                  : module.iconBg,
                            ),
                          )),
                ))
              ],
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: module.moduleBorder, width: 0.5),
              color: module.moduleBg,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kGrey,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: kGrey,
                      )
                    ]),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  module.desc,
                  style: TextStyle(
                    fontSize: 18,
                    color: kBlack.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    buildButton(Icons.access_time_filled, module.time,
                        module.buttonColor, module.buttonFont),
                    SizedBox(width: 20),
                    buildButton(Icons.bookmarks, module.lesson,
                        module.buttonColor, module.buttonFont),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

Container buildButton(
    IconData icon, String text, Color bgColor, Color fontColor) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(children: [
      Icon(
        icon,
        size: 20,
        color: fontColor,
      ),
      Text(
        text,
        style: TextStyle(
            color: fontColor, fontWeight: FontWeight.bold, fontSize: 12),
      )
    ]),
  );
}
