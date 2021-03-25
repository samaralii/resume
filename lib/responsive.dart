import 'package:flutter/material.dart';
import 'package:samaralii/utils/app_const.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < kMobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > kMobileWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > kMobileWidth) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
