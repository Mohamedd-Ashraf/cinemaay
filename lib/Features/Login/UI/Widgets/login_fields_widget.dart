import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Helpers/text_regex.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart';

class LoginFieldsWidget extends StatelessWidget {
  LoginFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: ColorsManager.grey),
      
            controller: context.read<SignInCubit>().emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email address';
              }
            },
            decoration: InputDecoration(
              labelText: "Email Address",
              labelStyle: TextStyle(color: ColorsManager.whiteGrey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: ColorsManager.primaryDark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: ColorsManager.grey),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 20.h),
          TextFormField(
            style: TextStyle(color: ColorsManager.grey),
            obscureText: true,
            controller: context.read<SignInCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty||!AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility_off, color: ColorsManager.grey),
                onPressed: () {
                  // Toggle password visibility
                  //TODO: Implement password visibility toggle
                },
              ),
      
              labelText: "Password",
              labelStyle: TextStyle(color: ColorsManager.whiteGrey),
      
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: ColorsManager.primaryDark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: ColorsManager.grey),
              ),
            ),
            textInputAction: TextInputAction.done,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Checkbox(value: false, onChanged: (value) {}),
              //         Text("Remember me", style: TextStyles.h1Medium),
              //       ],
              //     ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyles.h4Regular.copyWith(
                    color: ColorsManager.primarySoft,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
