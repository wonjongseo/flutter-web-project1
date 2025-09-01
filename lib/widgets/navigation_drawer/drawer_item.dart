import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/navbar_item/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.navigationPath,
  });

  final String title;
  final String navigationPath;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title: title, navigationPath: navigationPath),
        ],
      ),
    );
  }
}
