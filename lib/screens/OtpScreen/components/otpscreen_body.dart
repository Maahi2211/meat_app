// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/RegisterScreen/registerscreen.dart';
import 'package:sizer/sizer.dart';

class OtpPageBody extends StatelessWidget {
  const OtpPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(child: Image.asset(Images.MEAT)),
            Text('OTP Verification',
                style: TextStyle(
                  fontSize: 30,
                  color: mblack,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Enter the verification code we just sent on your mobile',
                style: TextStyle(color: mgrey2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: mred),
                      borderRadius: BorderRadius.circular(8)),
                  width: 16.w,
                  height: 8.h,
                  child: Center(
                    child: Text('5',
                        style: TextStyle(
                          fontSize: 20,
                          color: mblack,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: mred),
                      borderRadius: BorderRadius.circular(8)),
                  width: 16.w,
                  height: 8.h,
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                          fontSize: 20,
                          color: mblack,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: mred),
                      borderRadius: BorderRadius.circular(8)),
                  width: 16.w,
                  height: 8.h,
                  child: Center(
                    child: Text('3',
                        style: TextStyle(
                          fontSize: 20,
                          color: mblack,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 197, 193, 193)),
                      color: Color.fromARGB(255, 232, 230, 230),
                      borderRadius: BorderRadius.circular(8)),
                  width: 16.w,
                  height: 8.h,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GlobalButton(
                title: "Verify",
                btnHeight: 7.h,
                btnWidth: 89.w,
                btncolor: mred,
                ontap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                }),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Didn't received code?",
                      style: TextStyle(fontSize: 13, color: mblack),
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        fontSize: 13,
                        color: mred,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
    );
  }
}
