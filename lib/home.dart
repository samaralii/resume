import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samaralii/components/about_me.dart';
import 'package:samaralii/components/profile.dart';
import 'package:samaralii/widgets/custom_card.dart';
import 'package:samaralii/responsive.dart';
import 'package:samaralii/utils/app_const.dart';
import 'package:samaralii/widgets/navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _responsiveView() {
    return Responsive(mobile: _mobileView(), desktop: _webView());
  }

  Widget _webView() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding * 3, horizontal: kDefaultPadding),
      child: Container(
        width: 1150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 3, child: Profile()),
            Container(
              width: 30,
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  children: [
                    NavigationBar(),
                    Container(
                      height: 30,
                    ),
                    CustomCard(
                      child: Container(
                        height: 600,
                        color: Colors.white,
                        child: _body(),
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

  Widget _mobileView() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding * 3, horizontal: kDefaultPadding),
      child: Container(
        width: 1150,
        child: Column(
          children: [
            Profile(),
            NavigationBar(),
            Container(
              height: 30,
            ),
            CustomCard(
              child: Container(
                height: 600,
                color: Colors.white,
                child: _body(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return AboutMeView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: _responsiveView()),
    );
  }
}
