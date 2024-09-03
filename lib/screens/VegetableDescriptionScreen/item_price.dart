// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '₹499',
          style: TextStyle(fontWeight: medium, fontSize: 20),
        ),
        SizedBox(width: 48.w),
        Container(
          width: 9.w,
          height: 5.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: mred, width: 1)),
          child: Icon(
            Icons.remove,
            color: mred,
          ),
        ),
        Text('1'),
        Container(
          width: 9.w,
          height: 5.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: mred,
            boxShadow: [
              BoxShadow(
                color: mred.withOpacity(0.2), // Shadow color
                offset: Offset(0, -1), // Offset of the shadow
                blurRadius: 2, // Blur radius
                spreadRadius: 2,
              ),
            ],
          ),
          child: Icon(
            madd,
            color: mwhite,
          ),
        ),
      ],
    );
  }
}
