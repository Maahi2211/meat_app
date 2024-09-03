// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/OrderDetailsScreen/details.dart';

import 'package:sizer/sizer.dart';

class TrackingOrderBody extends StatelessWidget {
  const TrackingOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Images.PAYMENTSUCCESS),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(mrupee),
                Text(
                  '196',
                  style: TextStyle(fontWeight: bold1, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Payment Done',
              style: TextStyle(fontWeight: bold1, color: mred, fontSize: 20),
            ),
            Text(
              'Your payment is successfully completed',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Your',
                  ),
                  TextSpan(
                    text: 'Order ID: 06521',
                    style: TextStyle(
                        color: mred,
                        fontSize: 15), // Red color for specific text
                  ),
                  TextSpan(
                    text: 'has been placed',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            GlobalButton(
                title: "Track Order",
                btnHeight: 7.h,
                btnWidth: 50.w,
                btncolor: mred,
                shadowcolor: mred,
                ontap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderDetails()));
                }),
          ],
        ),
      ),
    );
  }
}
