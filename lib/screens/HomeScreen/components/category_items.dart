// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var names = ['Vegetables', 'Fruits', 'Milk & Eggs', 'Drinks'];
    return SizedBox(
      height: 12.h,
      child: ListView.builder(
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 23.w,
              height: 30.h,
              child: Column(
                children: [
                  Container(
                    height: 8.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                        color: mlightpink,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Image.asset(Images.VEGETABLES)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    names[index],
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            );
          }),
    );
  }
}
