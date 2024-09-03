// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_2/constants/globallist.dart';

import 'package:flutter_application_2/screens/VegetablesScreen/components/item_names.dart';
import 'package:flutter_application_2/screens/VegetablesScreen/components/item_widget.dart';
import 'package:sizer/sizer.dart';

class VegetableItemsBody extends StatelessWidget {
  const VegetableItemsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          children: [
            ItemNames(),
            SizedBox(
              height: 3.h,
            ),
            GlobalList(),
            SizedBox(
              height: 1.h,
            ),
            ItemsWidget(),
            SizedBox(
              height: 17.h,
            ),
          ],
        ),
      ),
    );
  }
}
