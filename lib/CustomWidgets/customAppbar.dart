import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    required this.title,
    super.key,
  });
  // Provide the size of the app bar
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 8,
      shadowColor: Color(0xff24263B),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "inter",
          fontSize: 24,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
    );
  }
}
