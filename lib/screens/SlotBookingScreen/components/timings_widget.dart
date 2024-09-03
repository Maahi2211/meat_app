// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class Timings extends StatelessWidget {
  const Timings({
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aug 10th',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Monday',
                      style: TextStyle(fontSize: 15, color: mlightgreen),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(color: mgrey),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: mred,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(color: mlightgrey2),
            GridView.builder(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Prevent scrolling within GridView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4, // Adjust as needed
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: mred),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      '08:00AM - 09:00AM',
                      style: TextStyle(fontSize: 12, color: mred),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
