// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart'; // Ensure correct imports
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:flutter_application_2/screens/ProfileScreen/profile_page.dart';
import 'package:sizer/sizer.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: mlightred,
                  radius: 13,
                  child: Icon(
                    mhistory,
                    color: mred1,
                  ),
                ),
                SizedBox(width: 3.w),
                Text('Order history'),
              ],
            ),
            Divider(color: mlightgrey1),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: mwhite,
                          ),
                          height: 40.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 13, vertical: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'My address',
                                    style: TextStyle(
                                      fontWeight: bold1,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.close, color: mred),
                                ],
                              ),
                              Divider(color: mlightgrey1),
                              SizedBox(height: 1.h),
                              Card(
                                color: mwhite,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 7,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address',
                                        style: TextStyle(
                                          color: mgrey,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(height: 0.5.h),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 9.w,
                                            height: 4.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              color: mlightred,
                                            ),
                                            child: Icon(
                                              Icons.home,
                                              color: mred,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Home',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  'Sri Sai Nagar, Ayyappa Society, Madhapur, Tel (500081)',
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    color: mgrey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 3.w),
                                          GestureDetector(
                                            onTap: () {
                                              _showEditAddressBottomSheet(
                                                  context);
                                            },
                                            child: Icon(
                                              meditpen,
                                              color: mred,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Container(
                                width: 50.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: mred),
                                ),
                                child: Center(
                                  child: Text(
                                    'Add new address',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: mred,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 27.0,
                    height: 27.0,
                    decoration: BoxDecoration(
                      color: mlightred,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.location_on_outlined,
                        size: 19,
                        color: mred1,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.w),
                Text('My address'),
              ],
            ),
            Divider(color: mlightgrey1),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: mlightred,
                  radius: 13,
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: mred1,
                  ),
                ),
                SizedBox(width: 3.w),
                Text('My Cart'),
              ],
            ),
            Divider(color: mlightgrey1),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: mlightred,
                  radius: 13,
                  child: Icon(
                    Icons.ios_share_outlined,
                    color: mred1,
                  ),
                ),
                SizedBox(width: 3.w),
                Text('Share app'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showEditAddressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: mwhite,
          ),
          height: 70.h,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My address',
                    style: TextStyle(
                      fontWeight: bold1,
                      fontSize: 16,
                    ),
                  ),
                  Icon(Icons.close, color: mred),
                ],
              ),
              Divider(color: mlightgrey1),
              SizedBox(height: 1.h),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter location',
                  filled: true,
                  fillColor: Colors.grey[50],
                  hintStyle: TextStyle(
                    color: mgrey,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Icon(
                    Icons.location_on, // Use the location icon
                    color: mgrey, // Icon color, adjust as needed
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Complete address',
                  filled: true,
                  fillColor: Colors.grey[50],
                  hintStyle: TextStyle(
                    color: mgrey, // Change hint text color
                    fontSize: 13.0, // Change hint text size
                    fontWeight: FontWeight.bold, // Change hint text weight
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Floor no/Block/Falt no',
                  filled: true,
                  fillColor: Colors.grey[50],
                  hintStyle: TextStyle(
                    color: mgrey, // Change hint text color
                    fontSize: 13.0, // Change hint text size
                    fontWeight: FontWeight.bold, // Change hint text weight
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Tag Location',
                style:
                    TextStyle(fontSize: 12, color: mgrey, fontWeight: medium),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Container(
                    width: 20.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: mgrey)),
                    child: Center(
                      child: Text(
                        'Home',
                        style: TextStyle(fontSize: 10, color: mgrey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: mgrey)),
                    child: Center(
                      child: Text(
                        'Work',
                        style: TextStyle(fontSize: 10, color: mgrey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: mgrey)),
                    child: Center(
                      child: Text(
                        'Hotel',
                        style: TextStyle(fontSize: 10, color: mgrey),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: mgrey)),
                    child: Center(
                      child: Text(
                        'Other',
                        style: TextStyle(fontSize: 10, color: mgrey),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              GlobalButton(
                  title: "Save address",
                  btnHeight: 7.h,
                  btnWidth: 89.w,
                  btncolor: mred,
                  ontap: () async {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  }),
            ],
          ),
        );
      },
    );
  }
}
