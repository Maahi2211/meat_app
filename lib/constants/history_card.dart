// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HistoryCardScreen extends StatelessWidget {
  const HistoryCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('Appointments History'),
        actions: [Icon(Icons.more_vert_rounded)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                  'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSuUal6EBmKgngpeWNcB90kLu3wfKAUax1rFrcBAlsLUAb37L2s'),
            ),
            Text(
              'No Appoitment Bookings Yet',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Book your first appointment now and treat yourself to a tailored spa experience for ultimate relaxation',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
