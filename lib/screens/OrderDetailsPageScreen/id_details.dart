// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_application_2/constants/colorconstants.dart';
import 'components/id_details_body.dart';

class OrderId extends StatelessWidget {
  const OrderId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   // backgroundColor: mlightblue,
      //   // toolbarHeight: 100,
      //   // title: Text(
      //   //   'Oredr History',
      //   //   style: TextStyle(fontWeight: bold2, fontSize: 16),
      //   // ),
      // ),
      body: OrderIDBody(),
    );
  }
}
