import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class NoSearchResultWidget extends StatelessWidget {
  const NoSearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/search_empty.png', width: 120.w),
           SizedBox(height: 20.h),
          const Text(
            "We Are Sorry, We Can\nNot Find The Movie :(",
            textAlign: TextAlign.center,
            style: TextStyles.h5Medium,
          ),
           SizedBox(height: 10.h),
           Text(
            "Find your movie by Type title,\ncategories, years, etc",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white38, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
