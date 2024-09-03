// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/bottom_navigation_bar.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';

import 'package:flutter_application_2/screens/SlotBookingScreen/components/different_timings_widget.dart';
import 'package:flutter_application_2/screens/SlotBookingScreen/components/timings_widget.dart';
import 'package:sizer/sizer.dart';

class SlotTimeBody extends StatelessWidget {
  const SlotTimeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
          child: Column(
            children: [
              Timings(),
              SizedBox(height: 2.h),
              DifferentTimings(),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 89.w,
        height: 7.h,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Navbar(i: 2)),
            );
          },
          backgroundColor: mred,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Adjust border radius here
          ), // Adjust the elevation for shadow effect
          child: Text(
            'Next',
            style: TextStyle(
                fontSize: 12.sp, color: mwhite), // Adjust text style if needed
          ),
        ),
      ),
    );
  }
}
