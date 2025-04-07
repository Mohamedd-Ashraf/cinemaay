import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/CoreWidgets/primary_button_widget.dart';
import 'package:gedeed/Core/Routes/app_router.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

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
          height: 60,
          label: "Sign Up",

          onPressed: () {
            Navigator.pushNamed(context, Routes.signUpScreen);
          },
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
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
