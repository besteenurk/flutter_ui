import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CactusCard extends StatelessWidget {
  const CactusCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.count,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int count;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              press();
            },
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryCactusColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/inf.png"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/add_cart.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
