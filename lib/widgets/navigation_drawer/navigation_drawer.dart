import 'package:flutter/material.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter_web_project/widgets/navigation_drawer/navigation_drawer_header.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navigationPath: EpisodesRoute,
          ),

          DrawerItem(
            title: 'About',
            icon: Icons.help,
            navigationPath: AboutRoute,
          ),
        ],
      ),
    );
  }
}
