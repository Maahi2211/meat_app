// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class UPI extends StatelessWidget {
  const UPI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 10.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: mgrey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Image.asset(Images.GPAY)),
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                Text(
                  'Google Pay',
                  style: TextStyle(fontWeight: bold1, fontSize: 12),
                ),
                Spacer(),
                Icon(
                  mcircledot,
                  size: 18,
                  color: mred,
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Divider(
                color: mgrey,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Container(
                  width: 10.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: mgrey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(child: Image.asset(Images.PHONEPAY)),
                ),
                SizedBox(
                  width: 1.5.w,
                ),
                Text(
                  'Phone Pe',
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
          ],
        ),
      ),
    );
  }
}
