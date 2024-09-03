// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/item_count.dart';
import 'package:flutter_application_2/screens/PaymentMethodScreen/payment_page.dart';

import 'components/mycartpage_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mwhite,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: mlightblue,
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: bold2, fontSize: 16),
        ),
      ),
      body: CartPageBody(),
      floatingActionButton: ItemCount(
        ontap: () async {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PaymentMethods()));
        },
        title: 'Place order',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
