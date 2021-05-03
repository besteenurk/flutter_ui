import 'package:flutter/material.dart';
import 'package:flutter_ui/cards_ui/cactus/components/cactus.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Cactus(),
                ],
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  CactusVertical(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
