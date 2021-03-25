import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:samaralii/utils/app_const.dart';
import 'package:samaralii/widgets/chip_button.dart';
import 'package:samaralii/widgets/custom_card.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Container(
      height: 70,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              color: kPrimaryColor,
              width: 70,
              height: double.infinity,
              child: Icon(
                FontAwesomeIcons.home,
                size: 18,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(children: [
                menuBtn(text: "Resume", view: Container()),
                menuBtn(text: "Portfolio", view: Container()),
                menuBtn(text: "Contact", view: Container()),
              ]),
            ),
          ),
          Container(
            child: ChipButton(
                text: "Hire Me",
                icon: FontAwesomeIcons.solidPaperPlane,
                onTap: () {}),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    ));
  }

  Widget menuBtn({@required String text, @required Widget view}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {
          //
        },
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
