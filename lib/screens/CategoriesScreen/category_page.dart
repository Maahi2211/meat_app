// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/screens/CategoriesScreen/components/category_page_body.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        backgroundColor: mlightblue,
        toolbarHeight: 100,
        title: Text(
          'Categories',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: ListItems(),
    );
  }
}
