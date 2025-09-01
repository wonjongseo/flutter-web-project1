import 'package:flutter/material.dart';
import 'package:flutter_web_project/datamodels/navbar_item_model.dart';
import 'package:provider/provider.dart';

class NavBarItemMobile extends StatelessWidget {
  const NavBarItemMobile({super.key});

  @override
  Widget build(BuildContext context) {
    NavBarItemModel model = Provider.of<NavBarItemModel>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          SizedBox(width: 30),
          Text(model.title, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
