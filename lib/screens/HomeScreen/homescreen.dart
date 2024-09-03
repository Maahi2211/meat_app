// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';

import 'package:sizer/sizer.dart';
import 'components/homescreen_body.dart';

class HomePage extends StatelessWidget {
  final String location;

  const HomePage({super.key, required this.location});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100.w, 10.h),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.location_on,
                color: mred,
                size: 20,
              ),
              Text(
                location,
                style: TextStyle(fontSize: 10.sp),
              ),
              // Icon(
              //   Icons.arrow_drop_down,
              //   color: mred,
              //   size: 23,
              // ),
              Spacer(),
              Icon(
                Icons.notifications,
                color: mred,
                size: 25,
              ),
            ],
          ),
        ),
      ),
      body: HomePageBody(),
    );
  }
}
