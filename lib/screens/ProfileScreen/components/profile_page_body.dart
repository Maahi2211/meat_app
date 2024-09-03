// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/screens/EditProfileScreen/profile_edit.dart';
import 'package:flutter_application_2/screens/ProfileScreen/components/history.dart';
import 'package:flutter_application_2/screens/ProfileScreen/components/support_card.dart';
import 'package:sizer/sizer.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRxjqW8arAjJZTtBiY7fa-2DLmq7qPv0jhJg&s'),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Maahi Kolathur',
              style: TextStyle(fontSize: 18, fontWeight: bold1),
            ),
            Text(
              'maheswarikolathur001@gmail.com',
              style: TextStyle(fontSize: 12, color: mgrey),
            ),
            SizedBox(
              height: 1.h,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              icon: Icon(meditpen, color: mwhite),
              label: Text(
                'Edit Profile',
                style: TextStyle(color: mwhite, fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            HistoryCard(),
            SizedBox(
              height: 1.5.h,
            ),
            SupportCard(),
          ],
        ),
      ),
    );
  }
}
