// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class Address extends StatelessWidget {
  const Address({
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
              'Address',
              style: TextStyle(color: mgrey, fontSize: 12),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align items to start
              children: [
                Container(
                  width: 9.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: mlightred,
                  ),
                  child: Icon(
                    Icons.home,
                    color: mred,
                  ),
                ),
                SizedBox(width: 3.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 0.5.h), // Add space between texts
                      Text(
                        'Sri Sai Nagar, Ayyappa Society, Madhapur, Tel (500081)',
                        maxLines: 2,
                        overflow:
                            TextOverflow.ellipsis, // Add ellipsis for overflow
                        style: TextStyle(color: mgrey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
