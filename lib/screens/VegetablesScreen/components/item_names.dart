// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class ItemNames extends StatelessWidget {
  const ItemNames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: mred,
            ),
            child: Center(
                child: Text(
              "Vegetables",
              style: TextStyle(color: mwhite, fontSize: 12, fontWeight: medium),
            ))),
        SizedBox(
          width: 1.5.w,
        ),
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: mred, width: 1.5),
            ),
            child: Center(
                child: Text(
              "Exotics",
              style: TextStyle(color: mred, fontSize: 12, fontWeight: medium),
            ))),
        SizedBox(
          width: 1.5.w,
        ),
        Container(
            width: 28.w,
            height: 5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: mred, width: 1.5),
            ),
            child: Center(
                child: Text(
              "Flowers",
              style: TextStyle(color: mred, fontSize: 12, fontWeight: medium),
            )))
      ],
    );
  }
}
