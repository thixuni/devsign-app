import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:course_app/app_theme/theme_service.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  CustomAppBar(
      {required Key? key,
      required this.title,
      required this.appBar,
      required this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: widgets,
      backgroundColor: Theme.of(context).backgroundColor,
      iconTheme: Theme.of(context).iconTheme,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
