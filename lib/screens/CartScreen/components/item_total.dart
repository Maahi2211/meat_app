// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class ItemTotal extends StatelessWidget {
  const ItemTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 32.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: mlightgreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'You saved 20/- on this order!',
                  style: TextStyle(
                      color: mwhite, fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0, // Adjust position as needed
          left: 0,
          right: 0,
          bottom: 6.h,
          child: Card(
            color: mwhite,
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Item Total',
                        style: TextStyle(fontWeight: medium),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          mrupee,
                          color: mred,
                          size: 15,
                        )),
                        TextSpan(
                            text: '196',
                            style: TextStyle(
                                fontSize: 13,
                                color: mblack,
                                fontWeight: medium))
                      ]))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: TextStyle(color: mgrey2, fontSize: 10),
                      ),
                      Text(
                        'Free',
                        style: TextStyle(color: mlightgreen),
                      ),
                    ],
                  ),
                  Divider(color: mlightgrey1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Packing charges',
                        style: TextStyle(fontSize: 13),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          mrupee,
                          color: mred,
                          size: 15,
                        )),
                        TextSpan(
                            text: '20.00',
                            style: TextStyle(
                                fontSize: 13,
                                color: mblack,
                                fontWeight: medium))
                      ]))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taxes and Charges',
                        style: TextStyle(fontSize: 13),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          mrupee,
                          color: mred,
                          size: 15,
                        )),
                        TextSpan(
                            text: '20.00',
                            style: TextStyle(
                                fontSize: 13,
                                color: mblack,
                                fontWeight: medium))
                      ]))
                    ],
                  ),
                  Divider(color: mlightgrey1),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'To Pay',
                        style: TextStyle(fontWeight: bold1),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        WidgetSpan(
                            child: Icon(
                          mrupee,
                          color: mred,
                          size: 18,
                        )),
                        TextSpan(
                            text: '196',
                            style: TextStyle(
                                fontSize: 18, color: mblack, fontWeight: bold1))
                      ]))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
