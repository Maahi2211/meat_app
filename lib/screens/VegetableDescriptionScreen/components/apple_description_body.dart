// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';

import 'package:flutter_application_2/screens/VegetableDescriptionScreen/components/apple_images.dart';
import 'package:flutter_application_2/screens/VegetableDescriptionScreen/item_price.dart';
import 'package:sizer/sizer.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppleImage(),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Naturel Red Apple',
              style: TextStyle(fontWeight: medium, fontSize: 25),
            ),
            Text(
              '1kg,',
              style: TextStyle(color: mgrey2),
            ),
            SizedBox(
              height: 4.h,
            ),
            ItemPrice(),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: mlightgrey2,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'About Product',
              style: TextStyle(fontWeight: medium, fontSize: 20),
            ),
            Text(
              'Deacription Coriander Leaves Are Aromatic Green Leaves That Are Laegely Used To Flavour And Garnish Food. Helps Fight Food Poisoning And Lower Blood Sugar Levels And Relieve Urinay Tract Infections.',
              style: TextStyle(color: mgrey2),
            ),
            Text(
              '.Country Of Origin : India',
              style: TextStyle(color: mgrey2),
            ),
            Text(
              '.Shelf Life : 3Days',
              style: TextStyle(color: mgrey2),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
