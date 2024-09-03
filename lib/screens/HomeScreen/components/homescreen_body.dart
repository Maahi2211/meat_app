// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_2/screens/HomeScreen/components/banner_images.dart';
import 'package:flutter_application_2/screens/HomeScreen/components/categories.dart';
import 'package:flutter_application_2/screens/HomeScreen/components/category_items.dart';
import 'package:flutter_application_2/screens/HomeScreen/components/popular_items.dart';
import 'package:flutter_application_2/screens/HomeScreen/components/search_bar.dart';
import 'package:sizer/sizer.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            SerachBarWidget(),
            SizedBox(
              height: 3.h,
            ),
            CategoriesWidget(),
            SizedBox(
              height: 3.h,
            ),
            CategoryWidget(),
            SizedBox(
              height: 3.h,
            ),
            BaneerImages(),
            SizedBox(
              height: 3.h,
            ),
            PopularItemsWidget(),
          ],
        ),
      ),
    );
  }
}
