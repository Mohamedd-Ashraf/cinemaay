import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../widgets/auth-options.dart';
import '../widgets/logo_and_text.dart';
import '../widgets/login_lower_bar_widget.dart';

class authStart extends StatelessWidget {
  const authStart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.primary,
        body: Padding(
          padding: EdgeInsets.only(top: 150.h),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  LogoAndTextAuthStartWidet(),
                  SizedBox(height: 40.h),
                  AuthOptionsWidget(),
                  LoginLowerBarWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
