import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/ui_home/components/body.dart';
import 'package:flutter_ui/ui_home/components/bottomNavigator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Body(),
    );
  }
}

AppBar appBar() {
  return AppBar(
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding / 4),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/desing_app_bar.svg"),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
