// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/globalbutton.dart';
import 'package:sizer/sizer.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRxjqW8arAjJZTtBiY7fa-2DLmq7qPv0jhJg&s'),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 30.w,
                child: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(backgroundColor: mred),
                  icon: Icon(
                    Icons.edit_square,
                    color: mwhite,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: mlightgrey2),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  width: 20.w,
                  height: 7.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Ms',
                        style: TextStyle(
                          fontSize: 15,
                          color: mblack,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        mfavourite,
                        color: mred,
                        size: 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'mahikolathur',
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintStyle: TextStyle(
                          color: mgrey, // Change hint text color
                          fontSize: 13.0, // Change hint text size
                          fontWeight: bold1, // Change hint text weight
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: mlightgrey1, // Set border color to grey
                            width: 1.0, // Set border width to 1
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: '+91 9885647485',
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintStyle: TextStyle(
                    color: mgrey, // Change hint text color
                    fontSize: 13.0, // Change hint text size
                    fontWeight: bold1, // Change hint text weight
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: mlightgrey1, // Set border color to grey
                      width: 1.0, // Set border width to 1
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'kolathurmaahi221@gmail.com',
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintStyle: TextStyle(
                    color: mgrey, // Change hint text color
                    fontSize: 13.0, // Change hint text size
                    fontWeight: bold1, // Change hint text weight
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.grey, // Set border color to grey
                      width: 2.0, // Set border width to 2
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: mlightgrey1, // Set border color to grey
                      width: 1.0, // Set border width to 1
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GlobalButton(
              title: "Update",
              btnHeight: 7.h,
              shadowcolor: mred,
              btnWidth: 50.w,
              btncolor: mred,
              ontap: () async {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => LocationScreenPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
