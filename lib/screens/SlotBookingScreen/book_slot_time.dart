// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'components/book_slot_time_body.dart';

class SlotTime extends StatelessWidget {
  const SlotTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        backgroundColor: mlightblue,
        title: Text(
          'Book Time Slot',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: SlotTimeBody(),
    );
  }
}
