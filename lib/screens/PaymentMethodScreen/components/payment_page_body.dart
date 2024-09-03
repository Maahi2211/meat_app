// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/screens/OrderTrackingScreen/track_order_page.dart';
import 'package:flutter_application_2/screens/PaymentMethodScreen/components/pay_on_delivery.dart';
import 'package:flutter_application_2/screens/PaymentMethodScreen/components/upi_payments.dart';

import 'package:sizer/sizer.dart';

class PaymentMethodsBody extends StatelessWidget {
  const PaymentMethodsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment method',
              style: TextStyle(fontWeight: bold1, fontSize: 18),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.network(
                  'https://v.hdfcbank.com/content/dam/hdfc-aem-microsites/new-credit-card-amp/cards/indianoil-cc.png',
                  width: 5.w,
                  height: 7.h,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Expanded(
                  child: Text(
                    'Link your bank accounts, credit cards, and even reward cards in one place.',
                    style: TextStyle(color: mgrey, fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Pay on Delivery',
              style: TextStyle(fontWeight: bold1, fontSize: 15),
            ),
            SizedBox(
              height: 1.h,
            ),
            OnDelivery(),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'UPI Payments',
              style: TextStyle(fontWeight: bold1, fontSize: 15),
            ),
            SizedBox(
              height: 2.h,
            ),
            UPI(),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Note:Do not go back while payment is processing',
              style: TextStyle(color: mgrey, fontSize: 12),
            ),
            SizedBox(
              height: 21.h,
            ),
            GlobalButton(
                title: 'Pay',
                shadowcolor: mred,
                btncolor: mred,
                btnHeight: 7.h,
                btnWidth: 89.w,
                ontap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TrackingOrder()));
                })
          ],
        ),
      ),
    );
  }
}
