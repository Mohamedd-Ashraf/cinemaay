import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/on_boarding.dart';

class OnboardingControls extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const OnboardingControls({
    super.key,
    required this.currentPage,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onSkip,
            child: const Text("SKIP", style: TextStyle(color: Colors.white)),
          ),
          Row(
            children: List.generate(
              onboardingData.length,
              (index) => Container(
                margin:  EdgeInsets.symmetric(horizontal: 4.sp),
                width: 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPage == index ? Colors.white : Colors.grey,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: onNext,
            child: Text(
              onboardingData[currentPage].buttonText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
