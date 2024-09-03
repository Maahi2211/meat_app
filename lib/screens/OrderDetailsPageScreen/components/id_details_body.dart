// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/screens/OrderDetailsPageScreen/components/search_bar.dart';
import 'package:sizer/sizer.dart';

class OrderIDBody extends StatelessWidget {
  const OrderIDBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchBar1(),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        child: Row(
                          children: [
                            Container(
                                width: 10.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Icon(Icons.shopping_bag_outlined,
                                      color: mwhite),
                                )),
                            SizedBox(
                              width: 3.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order ID #0012345',
                                  style: TextStyle(
                                      fontWeight: bold1, fontSize: 12),
                                ),
                                Text(
                                  '12 Items',
                                  style: TextStyle(fontSize: 10, color: mgrey),
                                )
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                    width: 20.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color:
                                            Color.fromARGB(255, 223, 248, 224)),
                                    child: Center(
                                      child: Text(
                                        'Delivered',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 11),
                                      ),
                                    )),
                                Text(
                                  'MOn, 07 Aug 2023',
                                  style: TextStyle(fontSize: 10, color: mgrey),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
