// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'components/payment_page_body.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        backgroundColor: mlightblue,
        title: Text(
          'Payment Methods',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: PaymentMethodsBody(),
    );
  }
}
