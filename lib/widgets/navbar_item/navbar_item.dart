import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/navbar_item_model.dart';
import 'package:flutter_web_project/extenstions/hover_extenstions.dart';
import 'package:flutter_web_project/locator.dart';
import 'package:flutter_web_project/services/navigation_service.dart';
import 'package:flutter_web_project/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:flutter_web_project/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String navigationPath;

  const NavBarItem({
    super.key,
    required this.title,
    required this.navigationPath,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child:
            ScreenTypeLayout(
              tablet: NavBarItemTabletDesktop(),
              mobile: NavBarItemMobile(),
            ).showCursorOnHover.moveUpOnHover,
      ),
    );
  }
}
