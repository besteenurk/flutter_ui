import 'package:flutter/material.dart';
import 'package:flutter_ui/cards_ui/cactus/components/cactus_card.dart';
import 'package:flutter_ui/constants.dart';

class Cactus extends StatelessWidget {
  const Cactus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CactusCard(
            image: "assets/images/cactus.png",
            title: "CACTUS",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus_2.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus_1.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CactusVertical extends StatelessWidget {
  const CactusVertical({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(
        left: kDefaultPadding * 4,
        right: kDefaultPadding * 4,
      ),
      child: Column(
        children: [
          CactusCard(
            image: "assets/images/cactus.png",
            title: "CACTUS",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus_2.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus_1.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
          CactusCard(
            image: "assets/images/cactus.png",
            title: "de",
            country: "country",
            count: 2,
            press: () {},
          ),
        ],
      ),
    );
  }
}
