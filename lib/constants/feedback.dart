import 'package:flutter/material.dart';

import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mwhite,
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank You for Your Feedback!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: bold1, fontSize: 15.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRW65qMMxfc_zKwcLlO77H1TOcX6BIGR2OPbRoR5ABAuTmdTd2B'),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'We appreciate your feedback.It helps us improve our services and ensures better experiences for you.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Thank you for choosing Oasis Spa Haven!',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: mblack,
                      minimumSize: Size(55.w, 7.h),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Text(
                    'Done',
                    style: TextStyle(color: mwhite, fontWeight: bold1),
                  ))
            ],
          ),
        ));
  }
}
