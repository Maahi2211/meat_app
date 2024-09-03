// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/VegetablesScreen/vegetable_items.dart';
import 'package:sizer/sizer.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 4.w,
            mainAxisSpacing: 5.w,
            crossAxisCount: 4,
            childAspectRatio: 0.7),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 16.w,
                height: 7.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mlightpink,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VegetableItems()));
                    },
                    child: Image.asset(Images.FRUITS)),
              ),
              Text(
                'Fruits',
                style: TextStyle(fontSize: 13, fontWeight: bold1),
              )
            ],
          );
        },
      ),
    );
  }
}
