// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class ItemCount extends StatelessWidget {
  const ItemCount({
    super.key,
    this.ontap,
    this.title,
  });
  final void Function()? ontap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 11.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: mwhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 1),
              color: mgrey,
            )
          ],
        ),
        child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: mwhite,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.8.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2 items",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text(
                                "₹",
                                style: TextStyle(fontSize: 17, color: mred),
                              ),
                              Text(
                                "196",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: ontap,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                offset: Offset(0, 5),
                                color: mred.withOpacity(0.3),
                              ),
                            ],
                            color: mred,
                          ),
                          width: 34.w,
                          height: 6.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                title ?? '',
                                style: TextStyle(color: mwhite),
                              ),
                              Icon(
                                marrowright,
                                color: mwhite,
                                size: 20,
                              ), // Updated to use a default icon
                            ],
                          ),
                        ),
                      )
                    ]))));
  }
}
