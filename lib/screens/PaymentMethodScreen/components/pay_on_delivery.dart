// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class OnDelivery extends StatelessWidget {
  const OnDelivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Row(
          children: [
            Container(
              width: 10.w,
              height: 4.h,
              decoration: BoxDecoration(
                  border: Border.all(color: mgrey),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(child: Image.asset(Images.CASH)),
            ),
            SizedBox(
              width: 1.5.w,
            ),
            Text(
              'Cash Payment',
              style: TextStyle(fontWeight: bold1, fontSize: 12),
            ),
            Spacer(),
            Icon(
              mcircle,
              size: 18,
              color: mgrey,
            )
          ],
        ),
      ),
    );
  }
}
