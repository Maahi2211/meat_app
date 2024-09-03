// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'components/profile_edit_body.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mlightblue,
        toolbarHeight: 100,
        title: Text(
          'Edit Profile',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: EditProfileBody(),
    );
  }
}
