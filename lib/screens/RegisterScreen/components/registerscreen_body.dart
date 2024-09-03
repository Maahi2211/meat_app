// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/LocationScreen/locationscreen.dart';
import 'package:sizer/sizer.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: Image.asset(Images.MEAT)),
              SizedBox(
                height: 6.h,
              ),
              Text('Hello! Register to get started',
                  style: TextStyle(
                    fontSize: 30,
                    color: mblack,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: mlightgrey2),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100]),
                    width: 20.w,
                    height: 7.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Ms',
                            style: TextStyle(
                              fontSize: 15,
                              color: mblack,
                              fontWeight: FontWeight.w400,
                            )),
                        Icon(
                          mfavourite,
                          color: mred,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintStyle: TextStyle(
                            color: mgrey,
                            fontSize: 13.0,
                            fontWeight: bold1,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintStyle: TextStyle(
                      color: mgrey,
                      fontSize: 13.0,
                      fontWeight: bold1,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              GlobalButton(
                  title: "Register",
                  btnHeight: 7.h,
                  btnWidth: 89.w,
                  btncolor: mred,
                  ontap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationScreenPage()));
                  }),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: Text(
                  'By Register, you agree to our all',
                  style: TextStyle(fontSize: 11),
                ),
              ),
              Center(
                child: Text('Terms&conditions',
                    style: TextStyle(color: mred, fontSize: 11)),
              ),
            ]),
      ),
    );
  }
}
