import 'package:flutter/material.dart';
import 'package:flutter_web_project/extenstions/hover_extenstions.dart';
import 'package:flutter_web_project/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter_web_project/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  const CallToAction({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      tablet: CallToActionTabletDesktop(title: title),
    ).showCursorOnHover.moveUpOnHover;
  }
}
