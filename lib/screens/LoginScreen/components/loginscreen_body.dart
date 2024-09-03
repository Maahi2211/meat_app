// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:flutter_application_2/screens/OtpScreen/otpscreen.dart';
import 'package:sizer/sizer.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(child: Image.asset(Images.MEAT)),
            Text('Mobile number',
                style: TextStyle(
                  fontSize: 30,
                  color: mblack,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'We need to register your mobile number before getting started!',
              style: TextStyle(color: mgrey2),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: mred),
                  borderRadius: BorderRadius.circular(10)),
              width: 90.w,
              height: 7.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('+91',
                      style: TextStyle(
                        fontSize: 20,
                        color: mblack,
                        fontWeight: FontWeight.w500,
                      )),
                  Divider(
                    thickness: 5,
                    color: mgrey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('9704611443',
                      style: TextStyle(
                        fontSize: 20,
                        color: mblack,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GlobalButton(
                title: "Send OTP",
                btncolor: mred,
                btnHeight: 7.h,
                btnWidth: 89.w,
                ontap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpPage()));
                }),
            SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By Login you agree to our ',
                      style: TextStyle(fontSize: 12, color: mblack),
                    ),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyle(
                        fontSize: 12,
                        color: mred,
                        // decoration: TextDecoration.underline,
                      ),
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () {
                      //     // Handle the tap event, e.g., navigate to Terms & Conditions page
                      //   },
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
