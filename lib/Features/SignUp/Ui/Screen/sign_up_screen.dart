import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/CoreWidgets/primary_button_widget.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';
import 'package:gedeed/Features/SignUp/Ui/widgets/sign_up_bloc_listener.dart';
import 'package:gedeed/Features/SignUp/Ui/widgets/signup_fields_widget.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';

import '../widgets/signup_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false; // Initialize the checkbox state
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      appBar: AppBar(
        title: const Text('Sign Up', style: TextStyles.h2Semibold),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
          child: CircleAvatar(
            radius: 15.sp,
            backgroundColor: ColorsManager.primaryDark,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: ColorsManager.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 25.w,
              right: 25.w,
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                SignUpTextWidget(),
                SizedBox(height: 50.h),

                /// ✅ Wrap SignUpFields in a Builder to ensure the context has access to SignUpCubit
                Builder(builder: (context) => SignUpFields()),

                SizedBox(height: 20.h),
                Row(
                  children: [
                    StatefulBuilder(
                      builder: (context, setState) {
                        return Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },

                            activeColor: ColorsManager.primaryDark,
                            checkColor: ColorsManager.grey,
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'I agree to the ',
                          style: TextStyles.h4Regular,
                          children: [
                            TextSpan(
                              text: 'Terms and Services',
                              style: TextStyles.h4Regular.copyWith(
                                color: ColorsManager.primarySoft,
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () {
                                      // Handle Terms and Services tap
                                    },
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyles.h4Regular,
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyles.h4Regular.copyWith(
                                color: ColorsManager.primarySoft,
                              ),
                              recognizer:
                                  TapGestureRecognizer()
                                    ..onTap = () {
                                      // Handle Privacy Policy tap
                                    },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                AppButton(
                  size: ButtonSize.extraLarge,
                  height: 90.h,
                  width: double.infinity,
                  onPressed: () {
                    validateThenDoSignup(context);

                    // Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  label: 'Sign Up',
                ),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoSignup(BuildContext context) {
  if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().signUp();
  }
}
