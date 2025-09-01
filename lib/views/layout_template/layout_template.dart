import 'package:flutter/material.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/routing/route_names.dart';
import 'package:flutter_web_project/routing/router.dart';
import 'package:flutter_web_project/services/navigation_service.dart';
import 'package:flutter_web_project/views/home/home_content_desktop.dart';
import 'package:flutter_web_project/views/home/home_content_mobile.dart';
import 'package:flutter_web_project/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_project/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_web_project/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          drawer:
              sizingInformation.deviceScreenType == DeviceScreenType.desktop
                  ? MyNavigationDrawer()
                  : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: [MyNavigationBar(), Expanded(child: child)],
            ),
          ),
        );
      },
    );
  }
}
