// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'components/profile_page_body.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        backgroundColor: mlightblue,
        toolbarHeight: 100,
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: ProfileBody(),
    );
  }
}
