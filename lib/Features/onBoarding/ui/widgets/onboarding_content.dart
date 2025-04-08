import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/on_boarding.dart';

class OnboardingContent extends StatelessWidget {
  final OnboardingItem item;

  const OnboardingContent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TopWaveClipper(),
          child: Image.asset(
            item.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 80.sp,
          left: 24.sp,
          right: 24.sp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title, style:  TextStyle(fontSize: 26.sp, fontWeight: FontWeight.bold, color: Colors.white)),
               SizedBox(height: 8.h),
              Text(item.subtitle, style:  TextStyle(fontSize: 16.sp, color: Colors.white70)),
            ],
          ),
        ),
      ],
    );
  }
}
