import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gedeed/Core/Themes/colors/colors.dart';
import 'package:gedeed/Core/Themes/styles/fonts/text_style.dart';

class LoginFieldsWidget extends StatelessWidget {
  LoginFieldsWidget({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(color: ColorsManager.grey),

          controller: emailController,

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
          controller: passwordController,
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
    );
  }
}
