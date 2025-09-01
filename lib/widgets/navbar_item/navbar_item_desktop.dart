import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/navbar_item_model.dart';
import 'package:provider/provider.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  const NavBarItemTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<NavBarItemModel>(context);
    return Text(model.title, style: TextStyle(fontSize: 18));
  }
}
