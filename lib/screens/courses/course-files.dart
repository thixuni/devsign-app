class Course {
  String authorName;
  String authorImage;
  String courseTitle;
  String courseImg;

  Course(this.authorName, this.authorImage, this.courseTitle, this.courseImg);

  static List<Course> generateCourses() {
    return [
      //Course(authorName, authorImage, courseTitle, courseImg)
      Course("Jane Doe", "assets/icons/avatar.png", "UI/UX Design",
          "assets/images/course1.png"),
      Course("Jane Doe", "assets/icons/avatar.png", "UI/UX Design",
          "assets/images/course2.png"),
      Course("Jane Doe", "assets/icons/avatar.png", "UI/UX Design",
          "assets/images/course3.png"),
    ];
  }
}
