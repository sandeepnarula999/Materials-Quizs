import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 28.0,
        onPressed: () {},
      ),
      title: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 35,
            //child: Image.network('https://jep-asset.akamaized.net/jio/svg/logo/myjio-n.svg'),
          ),
          Container(padding: const EdgeInsets.all(8.0), child: Text('SkillUP', style: TextStyle(fontSize: 17))),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person),
          iconSize: 28.0,
          onPressed: () {},
          tooltip: 'login',
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
