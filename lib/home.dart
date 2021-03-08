import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samaralii/components/profile.dart';
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
        height: 1000,
        width: 1150,
        child: Row(
          children: [
            //profile
            Expanded(flex: 3, child: Profile()),
            Container(
              width: 30,
            ),
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.yellow,
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
  Widget _navigationBar() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: _body()),
    );
  }
}
