import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:samaralii/components/profile.dart';
import 'package:samaralii/custom_views/custom_card.dart';
import 'package:samaralii/utils/app_const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _body() {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 990) {
        return _bodyWeb();
      } else if (constraints.maxWidth < 990 && constraints.maxWidth > 750) {
        return _bodyTablet();
      } else {
        return _bodyMobile();
      }
    });
  }

  Widget _bodyWeb() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding * 3, horizontal: kDefaultPadding),
      child: Container(
        width: 1150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //profile
            Expanded(flex: 3, child: Profile()),
            Container(
              width: 30,
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    _navigationBar(),
                    Container(
                      height: 30,
                    ),
                    CustomCard(
                      child: Container(
                        height: 600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyTablet() {
    return Container(
      color: Colors.yellow,
      height: 100,
      width: 100,
    );
  }

  Widget _bodyMobile() {
    return Container(
      color: Colors.red,
      height: 100,
      width: 100,
    );
  }

  //navigation bar
  Widget _navigationBar() {
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
            child: _hireMe(),
          ),
        ],
      ),
    ));
  }

  Widget _hireMe() {
    return RawChip(
        backgroundColor: kPrimaryColor,
        useDeleteButtonTooltip: false,
        deleteIcon: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white,
          child: FaIcon(
            FontAwesomeIcons.solidPaperPlane,
            color: Colors.black,
            size: 10,
          ),
        ),
        labelPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        onDeleted: () {},
        label: Text(
          "Hire Me",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: _body()),
    );
  }
}
