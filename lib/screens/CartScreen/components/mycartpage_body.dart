// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globallist.dart';

import 'package:flutter_application_2/screens/CartScreen/components/address.dart';
import 'package:flutter_application_2/screens/CartScreen/components/delivery_date.dart';
import 'package:flutter_application_2/screens/CartScreen/components/instructions_page.dart';
import 'package:flutter_application_2/screens/CartScreen/components/item_total.dart';

import 'package:sizer/sizer.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalList(),
              SizedBox(height: 2.h), // Adding space before "Bill Details"
              Text(
                'Bill Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 1.h),
              ItemTotal(),
              SizedBox(height: 1.h),
              DeliveryTime(),
              Instructions(),
              Address(),
              SizedBox(height: 1.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 4.w,
                    height: 2.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: mred),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 10, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'By accepting our '),
                          TextSpan(
                            text: 'terms and conditions ',
                            style: TextStyle(color: mred),
                          ),
                          TextSpan(
                            text:
                                'we are placing this order. Please check order details once.',
                          ),
                        ],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
