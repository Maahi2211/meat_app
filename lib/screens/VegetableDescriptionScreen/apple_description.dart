// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/item_count.dart';
import 'package:flutter_application_2/screens/SlotBookingScreen/book_slot_time.dart';
import 'components/apple_description_body.dart';

class Description extends StatelessWidget {
  const Description({super.key});

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
      body: DescriptionBody(),
      floatingActionButton: ItemCount(
        ontap: () async {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SlotTime()));
        },
        title: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
