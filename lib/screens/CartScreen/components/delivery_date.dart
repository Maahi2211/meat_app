// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class DeliveryTime extends StatelessWidget {
  const DeliveryTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery date',
              style: TextStyle(color: mgrey, fontSize: 12),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              children: [
                Container(
                  width: 8.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: mlightred,
                  ),
                  child: Icon(
                    Icons.local_shipping_outlined,
                    color: mred,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug 14th',
                      style: TextStyle(fontSize: 12, fontWeight: bold1),
                    ),
                    Text(
                      '08:00PM - 12:00Am',
                      style: TextStyle(color: mred, fontSize: 12),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      meditpen,
                      color: mred,
                      size: 13,
                    ),
                    Text(
                      'Friday',
                      style: TextStyle(fontSize: 12, fontWeight: regular),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
