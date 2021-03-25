import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:samaralii/widgets/chip_button.dart';
import 'package:samaralii/widgets/custom_card.dart';
import 'package:samaralii/data/data.dart';
import 'package:samaralii/utils/app_const.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../widgets/custom_clip_path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _lineStyle = LineStyle(color: Colors.grey, thickness: 0.5);
  final _indicatorSize = 8.0;

  Widget _body() {
    return CustomCard(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: kDefaultPadding, left: kDefaultPadding, bottom: 2),
              child: Text(
                "Samar ali".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    letterSpacing: 2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: kDefaultPadding, bottom: 10),
              child: Text(
                "Mobile Application Developer",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 13,
                    color: Colors.grey.shade600),
              ),
            ),
            _imageView(),
            _info(),
            Container(
              height: 40,
            ),
            Align(
                alignment: Alignment.center,
                child: ChipButton(
                    text: "Download Cv",
                    icon: FontAwesomeIcons.download,
                    onTap: () {})),
            Container(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  Widget _info() {
    return Container(
      child: ListView.builder(
        itemCount: USERINFO.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 20),
            child: TimelineTile(
                afterLineStyle: _lineStyle,
                beforeLineStyle: _lineStyle,
                isFirst: false,
                isLast: index == USERINFO.length - 1,
                alignment: TimelineAlign.start,
                indicatorStyle: IndicatorStyle(
                  color: kPrimaryColor,
                  height: _indicatorSize,
                  width: _indicatorSize,
                ),
                endChild: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                        children: [
                          TextSpan(text: USERINFO.keys.elementAt(index)),
                          TextSpan(text: ": "),
                          TextSpan(
                              text: USERINFO.values.elementAt(index),
                              style: TextStyle(color: Colors.grey.shade500)),
                        ]),
                  ),
                )),
          );
        },
      ),
    );
  }

  Widget _imageView() {
    return Container(
      height: 250,
      child: ClipPath(
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryDarkColor,
            // image: DecorationImage(
            //     image: NetworkImage(IMAGE_URL), fit: BoxFit.cover),
          ),
        ),
        clipper: CustomClipPath(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}
