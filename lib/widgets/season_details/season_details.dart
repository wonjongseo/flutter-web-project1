import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/season_details_model.dart';
import 'package:flutter_web_project/widgets/season_details/season_details_desktop.dart';
import 'package:flutter_web_project/widgets/season_details/season_details_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetails extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetails({key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: details,
      child: ScreenTypeLayout(
        desktop: SeasonDetailsDesktop(),
        mobile: SeasonDetailsMobile(),
      ),
    );
  }
}
