import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/DI/dependency_injection.dart';
import '../../../../Core/NetWorking/user_session.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class LoginTextWidget extends StatelessWidget {
  final String? userName; // Optional name for personalization

  const LoginTextWidget({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          userName != null ? "Hi, ${getIt<UserSession>().getUsername()}!👋" : "Hi, There!👋",
          style: TextStyles.h1Semibold.copyWith(
            fontSize: 26.sp,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10.h),
        Text(
          "Welcome back! Please enter \n your details.",
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
