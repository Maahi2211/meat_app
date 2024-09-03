// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/screens/OrderDetailsPageScreen/id_details.dart';
import 'package:flutter_application_2/screens/OrderHistoryScreen/components/history_body.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: mwhite,
        appBar: AppBar(
          backgroundColor: mlightblue,
          toolbarHeight: 100,
          title: Text(
            'Order History',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: ' History'),
              Tab(text: 'Details'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HistoryBody(),
            OrderId(),
          ],
        ),
      ),
    );
  }
}
