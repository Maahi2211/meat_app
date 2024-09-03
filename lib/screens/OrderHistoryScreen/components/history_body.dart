// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/OrderDetailsPageScreen/id_details.dart';

import 'package:sizer/sizer.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Column(
            children: [
              Image.asset(Images.MAN),
              SizedBox(height: 2.h),
              Text('There are no Orders to show!',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp)),
              SizedBox(height: 1.h),
              Text('Run for Fresh Eab Looks',
                  style: TextStyle(fontWeight: FontWeight.w500, color: mred)),
              SizedBox(height: 3.h),
              GlobalButton(
                title: "Add now",
                btnHeight: 7.h,
                btnWidth: 45.w,
                shadowcolor: mred,
                btncolor: mred,
                ontap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderId()));
                },
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
