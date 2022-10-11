import 'package:flutter/material.dart';
import 'package:my_goals_1/core/utils/constants/color_constants.dart';

class GoalsAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const GoalsAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: ColorConstants.blue,
        title: Text(
          title,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
