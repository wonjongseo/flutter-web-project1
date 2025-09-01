import 'package:flutter/material.dart';
import 'package:flutter_web_project/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_project/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction(title: 'Join Course'),
      ],
    );
  }
}
