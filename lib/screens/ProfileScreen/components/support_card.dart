// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:sizer/sizer.dart';

class SupportCard extends StatelessWidget {
  const SupportCard({
    super.key,
  });

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
                      Icons.support_agent_outlined,
                      color: mred1,
                    )),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'Support/ Chat with us',
                ),
              ],
            ),
            Divider(
              color: mlightgrey1,
            ),
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: mlightred,
                    radius: 13,
                    child: Icon(
                      Icons.policy_outlined,
                      color: mred1,
                    )),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'Privacy & policy',
                ),
              ],
            ),
            Divider(
              color: mlightgrey1,
            ),
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: mlightred,
                    radius: 13,
                    child: Icon(
                      Icons.library_books_outlined,
                      color: mred1,
                    )),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'Terms & conditions',
                ),
              ],
            ),
            Divider(
              color: mlightgrey1,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 23.h,
                          width: 100.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 13, vertical: 20),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 2.h), // Add space for the icon
                                  Text(
                                    'Log out',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Do you want to log out?',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 40.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(color: mred),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Yes ',
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
                                        width: 40.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: mred),
                                        child: Center(
                                          child: Text(
                                            'No ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: mwhite,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Positioned(
                                top:
                                    -30, // Move the icon slightly outside the top
                                left: 48.w -
                                    15, // Center horizontally with offset
                                child: CircleAvatar(
                                  backgroundColor: mred,
                                  radius: 18, // Larger radius to fit the icon
                                  child: IconButton(
                                    icon: Center(
                                      child: Icon(
                                        Icons.logout_outlined,
                                        size: 22,
                                        color: mwhite,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(
                                          context); // Close the bottom sheet
                                    },
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
                        Icons.logout_outlined,
                        size: 19,
                        color: mred1,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3.w),
                Text('Logout'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
