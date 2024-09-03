// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/colorconstants.dart';
import 'package:flutter_application_2/constants/image_constants.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AppleImage extends StatelessWidget {
  const AppleImage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();

    return SizedBox(
      height: 30.h,
      child: Card(
        color: mwhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Image.asset(
                    Images.BIGAPPLE,
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  dotHeight: 4,
                  dotWidth: 8,
                  dotColor: mlightgrey2,
                  activeDotColor: mred,
                  expansionFactor: 2,
                  spacing: 5.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
