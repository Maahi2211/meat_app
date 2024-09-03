// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: mwhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
          children: [
            Container(
              width: 10.w,
              height: 4.h,
              decoration: BoxDecoration(
                  border: Border.all(color: mgrey),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfKDhVFwii-h-1j1OcSueg6SZpxKSbhB3CbW92ipO39W611Nt1u4VvZI_RGrDAUlbRASw&usqp=CAU',
                ),
              ),
            ),
            SizedBox(
              width: 1.5.w,
            ),
            Text(
              'Cash Payment',
              style: TextStyle(fontWeight: bold1, fontSize: 12),
            ),
            SizedBox(width: 40.w),
            Icon(
              mcircle,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
