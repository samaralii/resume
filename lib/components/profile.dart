import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:samaralii/utils/app_const.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../custom_clip_path.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _body() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
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
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }

  final _lineStyle = LineStyle(color: Colors.grey, thickness: 0.5);
  final _indicatorSize = 10.0;

  Widget _info() {
    return Container(
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 20),
            child: TimelineTile(
                afterLineStyle: _lineStyle,
                beforeLineStyle: _lineStyle,
                isFirst: index == 0,
                isLast: index == 2,
                alignment: TimelineAlign.start,
                indicatorStyle: IndicatorStyle(
                  color: kPrimaryColor,
                  height: _indicatorSize,
                  width: _indicatorSize,
                ),
                // startChild: Container(),
                endChild: Container(
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13),
                        children: [
                          TextSpan(text: "Text1"),
                          TextSpan(
                              text: "Text1",
                              style: TextStyle(color: Colors.grey)),
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
            //     image: NetworkImage("https://i.imgur.com/nH8iZC1.jpg"))
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
