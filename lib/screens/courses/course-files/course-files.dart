import 'package:flutter/material.dart';

class CourseFiles {
  CourseFiles({
    required this.courseTitle,
    required this.courseAuthor,
    required this.illustration,
  });

  String courseTitle;
  String courseAuthor;
  String illustration;
}

// Popular Courses
var popularCourses = [
  CourseFiles(
    courseTitle: "Flutter for Designers",
    courseAuthor: "12 sections",
    illustration: 'illustration-01.png',
  ),
  CourseFiles(
    courseTitle: "Prototyping with ProtoPie",
    courseAuthor: "10 sections",
    illustration: 'illustration-02.png',
  ),
  CourseFiles(
    courseTitle: "Build an app with SwiftUI",
    courseAuthor: "22 sections",
    illustration: 'illustration-06.png',
  ),
];

// Premium Courses
var premiumCourses = [
  CourseFiles(
    courseTitle: "Build an app with SwiftUI",
    courseAuthor: "22 sections",
    illustration: 'illustration-04.png',
  ),
  CourseFiles(
    courseTitle: "Build an app with SwiftUI",
    courseAuthor: "22 sections",
    illustration: 'illustration-05.png',
  ),
];

// Course Sections
var courseSections = [
  CourseFiles(
    courseTitle: "Build an app with SwiftUI",
    courseAuthor: "01 Section",
    illustration: 'illustration-01.png',
  ),
  CourseFiles(
    courseTitle: "Flutter for Designers",
    courseAuthor: "02 Section",
    illustration: 'illustration-08.png',
  ),
  CourseFiles(
    courseTitle: "ProtoPie Prototyping",
    courseAuthor: "03 Section",
    illustration: 'illustration-09.png',
  ),
  CourseFiles(
    courseTitle: "UI Design Course",
    courseAuthor: "04 Section",
    illustration: 'illustration-10.png',
  ),
  CourseFiles(
    courseTitle: "React for Designers",
    courseAuthor: "05 Section",
    illustration: 'illustration-11.png',
  ),
];
