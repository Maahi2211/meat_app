// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final List<String> imageUrls3 = [
    //   'https://www.thegoodmoodfood.com.au/siteassets/foods/green/broccoli-lg.png',
    //   'https://www.thegoodmoodfood.com.au/siteassets/foods/green/broccoli-lg.png',
    //   'https://www.thegoodmoodfood.com.au/siteassets/foods/green/broccoli-lg.png',
    //   'https://www.thegoodmoodfood.com.au/siteassets/foods/green/broccoli-lg.png',
    //   'https://www.thegoodmoodfood.com.au/siteassets/foods/green/broccoli-lg.png'
    // ];

    var itemname = ['Brocolli', 'Potato', 'Onions', 'carrot'];
    var kg = ['1kg', '1.5kg', '1kg', '2kg'];
    var cost = ['10', '20', '10', '15'];
    return SizedBox(
        height: 28.h,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular items',
                style: TextStyle(fontWeight: bold2, fontSize: 16),
              ),
              SizedBox(
                width: 38.w,
              ),
              Text(
                'See all',
                style: TextStyle(color: mred),
              ),
              Icon(
                mdoublearrowright,
                color: mred,
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 23.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: false,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 38.w,
                    height: 10.h,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(child: Image.asset(Images.BROCOLI)),
                            Text(
                              itemname[index],
                              style: TextStyle(fontWeight: bold2, fontSize: 13),
                            ),
                            Text(
                              kg[index],
                              style: TextStyle(color: mgrey, fontSize: 10),
                            ),
                            Row(
                              children: [
                                Icon(
                                  mrupee,
                                  color: mred,
                                  size: 12,
                                ),
                                Text(
                                  cost[index],
                                  style: TextStyle(
                                      fontWeight: bold2,
                                      fontSize: 13,
                                      color: mred),
                                ),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Container(
                                  width: 9.w,
                                  height: 3.8.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: mred),
                                  child: Icon(
                                    madd,
                                    color: mwhite,
                                    size: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ]));
  }
}
