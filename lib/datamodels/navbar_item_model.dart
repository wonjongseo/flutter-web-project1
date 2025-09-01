import 'package:flutter/widgets.dart';

class NavBarItemModel {
  final String title;
  final String navigationPath;
  IconData? iconData;

  NavBarItemModel({
    required this.title,
    required this.navigationPath,
    this.iconData,
  });
}
