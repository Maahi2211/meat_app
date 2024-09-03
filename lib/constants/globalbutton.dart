// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.ontap,
    this.btnHeight,
    this.btnWidth,
    this.btncolor,
    this.shadowcolor,
    this.title,
  });

  final title;
  final ontap;
  final btncolor;
  final shadowcolor;
  final btnHeight;
  final btnWidth;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            shadowColor: shadowcolor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: btncolor,
            minimumSize: Size(btnWidth, btnHeight)),
        onPressed: ontap,
        child: Text(
          title ?? '',
          style: TextStyle(color: mwhite),
        ));
  }
}
