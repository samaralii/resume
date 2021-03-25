import 'package:flutter/material.dart';

import 'package:samaralii/utils/app_const.dart';

class ChipButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  const ChipButton({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawChip(
        backgroundColor: kPrimaryColor,
        useDeleteButtonTooltip: false,
        deleteIcon: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            color: Colors.black,
            size: 10,
          ),
        ),
        labelPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
        onDeleted: () {
          onTap();
        },
        label: Text(
          text,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ));
  }
}
