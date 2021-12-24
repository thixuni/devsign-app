import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/courses/module.dart';
import 'package:flutter/material.dart';
import 'course_module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text('The progress',
                  style: TextStyle(fontWeight: FontWeight.bold, color: kBlack)),
              Row(
                children: const [
                  Icon(Icons.grid_3x3_rounded),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.list_alt_rounded),
                ],
              )
            ]),

            ...modulesList.map((e) => CourseModules(e)).toList()

            //CourseModules(modulesList[0])
          ],
        ));
  }
}
