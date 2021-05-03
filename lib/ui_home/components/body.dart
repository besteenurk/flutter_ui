import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/cards_ui/cactus/cactus_home.dart';
import 'package:flutter_ui/ui_home/components/ui_list.dart';
import '../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              //margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
              height: size.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/desing_app_bar.svg",
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          UIList(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CactusHome()),
              );
            },
            title: "Cactus Card UI",
            icon: "assets/icons/cactus.svg",
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
/*
  Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
            height: size.height * 0.1,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    bottom: 36 + kDefaultPadding,
                  ),
                  height: size.height * 0.1 - 27,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                    margin:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
 */
