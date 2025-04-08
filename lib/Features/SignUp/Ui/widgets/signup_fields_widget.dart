import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Helpers/text_regex.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignUpFields extends StatefulWidget {
  SignUpFields({super.key});

  @override
  State<SignUpFields> createState() => _SignUpFieldsState();
}

class _SignUpFieldsState extends State<SignUpFields> {
  late TextEditingController passwordController = TextEditingController();

  bool isPasswordObscureText = true;

  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;

  bool hasUppercase = false;

  bool hasSpecialCharacters = false;

  bool hasNumber = false;

  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(color: ColorsManager.grey),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<SignUpCubit>().nameController,
            cursorColor: ColorsManager.primarySoft,

            decoration: InputDecoration(
              labelText: "Full Name",
              labelStyle: TextStyle(color: ColorsManager.whiteGrey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.sp),
                borderSide: BorderSide(color: ColorsManager.primaryDark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
                borderSide: BorderSide(color: ColorsManager.grey),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 20.h),
          TextFormField(
            style: TextStyle(color: ColorsManager.grey),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
            cursorColor: ColorsManager.primarySoft,
            keyboardType: TextInputType.emailAddress,

            decoration: InputDecoration(
              labelText: "Email Address",
              labelStyle: TextStyle(color: ColorsManager.whiteGrey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.sp),
                borderSide: BorderSide(color: ColorsManager.primaryDark),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.sp),
                borderSide: BorderSide(color: ColorsManager.grey),
              ),
            ),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 20.h),
          TextFormField(
            cursorColor: ColorsManager.primarySoft,

            style: TextStyle(color: ColorsManager.grey),
            obscureText: true,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },

            controller: passwordController,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordObscureText = !isPasswordObscureText;
                  });
                },
                child: Icon(
                  isPasswordObscureText
                      ? Icons.visibility_off
                      : Icons.visibility,
                ),
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
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
//TODO wants to be refactored to  