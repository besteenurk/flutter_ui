import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';

class UIList extends StatelessWidget {
  const UIList({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 100,
                color: kPrimaryColor.withOpacity(0.1),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SvgPicture.asset(icon),
            ],
          ),
        ),
      ),
    );
  }
}
