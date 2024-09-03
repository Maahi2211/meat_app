// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class GlobalList extends StatelessWidget {
  const GlobalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 0.5.h),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        itemCount: 2,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 12.h,
            child: Card(
              color: mwhite,
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w),
                child: Row(
                  children: [
                    Image.asset(
                      Images.SMALLAPPLE,
                      scale: 1.5,
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('Apple'),
                        subtitle: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              mrupee,
                              size: 17,
                              color: Color.fromARGB(255, 42, 219, 232),
                            ),
                            Text(
                              '99kg',
                              style: TextStyle(
                                color: Color.fromARGB(255, 42, 219, 232),
                              ),
                            ),
                            Text(
                              '₹100',
                              style: TextStyle(
                                color: mgrey,
                                fontSize: 10,

                                decoration: TextDecoration
                                    .lineThrough, // Initially no line
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 2.w),
                      child: Row(
                        children: [
                          Container(
                            width: 9.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: mred, width: 1),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: mred,
                            ),
                          ),
                          SizedBox(width: 2.w), // Spacing between icon and text
                          Text('1'),
                          SizedBox(width: 2.w),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
