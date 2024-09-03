// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/screens/CategoriesScreen/category_page.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Categories()));
          },
          child: Row(
            children: [
              Text(
                'See all',
                style: TextStyle(
                  color: mred,
                ),
              ),
              SizedBox(width: 5),
              Icon(
                mdoublearrowright,
                color: mred,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
