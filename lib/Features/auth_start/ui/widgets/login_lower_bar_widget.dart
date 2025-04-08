import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class LoginLowerBarWidget extends StatelessWidget {
  const LoginLowerBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: Divider(color: Colors.grey, thickness: 0.6.h),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text("Or sign in with", style: TextStyles.h3Regular),
              ),
              Expanded(
                child: Divider(color: Colors.grey, thickness: 0.6.h),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 50.w, right: 50.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 35.sp,
                  backgroundColor: ColorsManager.whiteGrey,
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.3.sp,
                      child: Image.asset("assets/images/google_logo.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: 35.sp,
                  backgroundColor: ColorsManager.primaryDark,
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.sp,
                      child: Image.asset(
                        "assets/images/apple_logo.png",
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: 35.sp,
                  backgroundColor: const Color.fromARGB(255, 46, 123, 255),
                  child: IconButton(
                    icon: Transform.scale(
                      scale: 1.3.sp,
                      child: Image.asset("assets/images/facebook_logo.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
