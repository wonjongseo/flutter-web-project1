import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/season_details_model.dart';
import 'package:flutter_web_project/styles/text_styles.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final details = Provider.of<SeasonDetailsModel>(context);
    return ResponsiveBuilder(
      builder:
          (context, sizingInformation) => Column(
            children: <Widget>[
              Text(
                details.title,
                style: titleTextStyle(sizingInformation.deviceScreenType),
              ),
              SizedBox(height: 50),
              Text(
                details.description,
                style: descriptionTextStyle(sizingInformation.deviceScreenType),
              ),
            ],
          ),
    );
  }
}
