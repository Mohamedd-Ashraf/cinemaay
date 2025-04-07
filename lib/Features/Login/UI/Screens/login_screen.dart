import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/CoreWidgets/primary_button_widget.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart';
import 'package:gedeed/Features/Login/UI/Widgets/login_fields_widget.dart';
import 'package:gedeed/Features/Login/UI/Widgets/login_states_listener.dart';
import 'package:gedeed/Features/auth_start/ui/widgets/login_lower_bar_widget.dart';
import 'package:gedeed/Features/Login/UI/Widgets/login_text_widget.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      appBar: AppBar(
        title: const Text('Login', style: TextStyles.h2Semibold),
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
                LoginTextWidget(),
                SizedBox(height: 50.h),
                LoginFieldsWidget(),
                SizedBox(height: 30.h),
                AppButton(
                  size: ButtonSize.extraLarge,
                  height: 90.h,
                  width: double.infinity,
                  onPressed: () {
                    validateThenDoSignIn(context);
                  },
                  label: 'Login',
                ),
                SignInBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoSignIn(BuildContext context) {
  final form = context.read<SignInCubit>().formKey.currentState;
  if (form!.validate()) {
    context.read<SignInCubit>().signIn();
  }
}
