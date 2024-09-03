// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          separatorBuilder: (context, index) => SizedBox(
                height: 0.5.h,
              ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 12.h,
              child: Card(
                color: mwhite,
                elevation: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Row(
                    children: [
                      Image.asset(Images.BANANA),
                      Expanded(
                        child: ListTile(
                          title: Text('Banana'),
                          subtitle: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                mrupee,
                                size: 17,
                                color: Color.fromARGB(255, 42, 219, 232),
                              ),
                              Text(
                                '99kg',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 42, 219, 232),
                                ),
                              ),
                              Text(
                                '₹100',
                                style: TextStyle(
                                  color: mgrey,
                                  fontSize: 10,
                                  decoration: TextDecoration
                                      .lineThrough, // Initially no line
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 19.w,
                          height: 4.5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: mred,
                            boxShadow: [
                              BoxShadow(
                                color: mred.withOpacity(0.3),
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            'Add',
                            style: TextStyle(color: mwhite),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
