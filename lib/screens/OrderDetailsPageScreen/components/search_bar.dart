// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:sizer/sizer.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 75.w,
          height: 6.4.h,
          decoration: BoxDecoration(
            border: Border.all(color: mlightgrey2, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search by category',
              prefixIcon: Icon(msearch),
              border: InputBorder.none,
              hintStyle: TextStyle(
                color: mgrey,
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 45.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Filter by',
                                style: TextStyle(
                                  fontWeight: bold1,
                                  fontSize: 16,
                                ),
                              ),
                              Icon(Icons.close, color: mred),
                            ],
                          ),
                          Divider(color: mlightgrey1),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Status',
                            style: TextStyle(color: mgrey, fontSize: 12),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: mred),
                                ),
                                child: Center(
                                  child: Text(
                                    'Waiting for pickup',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: mred,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                width: 30.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: mred),
                                child: Center(
                                  child: Text(
                                    'Ongoing',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: mwhite,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: mred),
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancelled',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: mred,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Container(
                                width: 30.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: mred)),
                                child: Center(
                                  child: Text(
                                    'Deliverd ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: mred,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          GlobalButton(
                              title: "Apply Filter",
                              btnHeight: 7.h,
                              btnWidth: 89.w,
                              btncolor: mred,
                              ontap: () async {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => LocationScreenPage()));
                              }),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
              width: 14.w,
              height: 6.4.h,
              decoration: BoxDecoration(
                border: Border.all(color: mlightgrey1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.tune,
                color: mblack,
              )),
        )
      ],
    );
  }
}
