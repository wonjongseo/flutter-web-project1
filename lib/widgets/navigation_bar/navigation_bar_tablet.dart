import 'package:flutter/material.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/widgets/navbar_item/navbar_item.dart';
import 'package:flutter_web_project/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavbarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Episodes', navigationPath: EpisodesRoute),
              SizedBox(width: 60),
              NavBarItem(title: 'About', navigationPath: AboutRoute),
            ],
          ),
        ],
      ),
    );
  }
}
