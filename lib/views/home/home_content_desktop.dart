import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_project/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(child: Center(child: CallToAction(title: 'Join Course'))),
      ],
    );
  }
}
