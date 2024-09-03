// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/item_count.dart';
import 'package:flutter_application_2/screens/VegetableDescriptionScreen/apple_description.dart';
import 'components/vegetable_items_body.dart';

class VegetableItems extends StatelessWidget {
  const VegetableItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        backgroundColor: mlightblue,
        title: Text(
          'Vegetables',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: VegetableItemsBody(),
      floatingActionButton: ItemCount(
        ontap: () async {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Description()));
        },
        title: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
