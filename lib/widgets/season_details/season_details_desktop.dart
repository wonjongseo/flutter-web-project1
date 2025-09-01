import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/season_details_model.dart';
import 'package:flutter_web_project/styles/text_styles.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final details = Provider.of<SeasonDetailsModel>(context);
    return ResponsiveBuilder(
      builder:
          (context, sizingInformation) => Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                details.title,
                style: titleTextStyle(sizingInformation.deviceScreenType),
              ),
              SizedBox(width: 50),
              Expanded(
                child: Text(
                  details.description,
                  style: descriptionTextStyle(
                    sizingInformation.deviceScreenType,
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
