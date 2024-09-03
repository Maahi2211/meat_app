// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class SerachBarWidget extends StatelessWidget {
  const SerachBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 75.w,
          height: 6.4.h,
          decoration: BoxDecoration(
            border: Border.all(color: mlightgrey2, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search by Food,drinks,etc',
              prefixIcon: Icon(msearch),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: mgrey,
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Container(
            width: 14.w,
            height: 6.4.h,
            decoration: BoxDecoration(
              color: mred,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.tune,
              color: mwhite,
            ))
      ],
    );
  }
}
