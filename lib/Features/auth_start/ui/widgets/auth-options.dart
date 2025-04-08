import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Helpers/CoreWidgets/primary_button_widget.dart';
import '../../../../Core/Routes/app_router.dart';
import '../../../../Core/Routes/routes.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';

class AuthOptionsWidget extends StatelessWidget {
  const AuthOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          size: ButtonSize.extraLarge,
          width: double.infinity,
          height: 60.h,
          label: "Sign Up",
          onPressed: () {
            Navigator.pushNamed(context, Routes.signUpScreen);
          },
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I already have an account?",
              style: TextStyles.h3Regular,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginScreen);
              },
              child: Text(
                "Login",
                style: TextStyles.h3Regular.copyWith(
                  color: ColorsManager.primarySoft,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
