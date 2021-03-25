import 'package:flutter/material.dart';
import 'package:samaralii/utils/app_const.dart';
import 'package:samaralii/widgets/title_widget.dart';

class AboutMeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Center(
        child: TitleWidget(
          text: "About Me",
        ),
      ),
    );
  }
}
