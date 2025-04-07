import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class LogoAndTextAuthStartWidet extends StatelessWidget {
  const LogoAndTextAuthStartWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/login_logo.png",
          width: 100.w,
          height: 100.h,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 25),
        Text(
          'CINEMAX',
          style: TextStyles.h1Semibold.copyWith(letterSpacing: 1.9),
        ),
        const SizedBox(height: 10),
        const Text('Nice to meet you!', style: TextStyles.h5Semibold),
        const SizedBox(height: 5),
        const Text(
          'Your one-stop solution for everything',
          style: TextStyles.h5Semibold,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
