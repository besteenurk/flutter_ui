import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/cards_ui/cactus/components/body.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/ui_home/components/bottomNavigator.dart';
import 'package:flutter_ui/ui_home/home_screen.dart';

class CactusHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
