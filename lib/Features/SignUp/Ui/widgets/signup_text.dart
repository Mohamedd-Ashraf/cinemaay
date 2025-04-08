import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class SignUpTextWidget extends StatelessWidget {

  const SignUpTextWidget({super.key });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Let’s get started 🦸",
          style: TextStyles.h1Semibold.copyWith(
            fontSize: 26.sp,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(
          "The latest movies and series are here",
          style: TextStyles.h3Semibold.copyWith(
            fontSize: 16.sp,
            color: Colors.white70,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
