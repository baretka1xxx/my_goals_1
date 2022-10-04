import 'package:flutter/material.dart';

class GoalsAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const GoalsAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 133, 224),
        title: Text(
          title,
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
