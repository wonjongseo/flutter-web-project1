import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/navbar_item/navbar_item.dart';
import 'package:flutter_web_project/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter_web_project/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:flutter_web_project/widgets/navigation_bar/navigation_bar_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTablet(),
    );
  }
}
