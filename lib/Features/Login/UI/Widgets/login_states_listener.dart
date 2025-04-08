import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/Helpers/extensions.dart';
import '../../../../Core/Routes/app_router.dart';
import '../../../../Core/Routes/routes.dart';
import '../../../../Core/Themes/colors/colors.dart';
import '../../../../Core/Themes/styles/fonts/text_style.dart';
import '../../Logic/cubit/login_cubit.dart';
import '../../Logic/cubit/login_state.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          current is SignInIntial ||
          current is SignInLoading ||
          current is SignInSuccess ||
          current is SignInError,
      listener: (context, state) {
        state.whenOrNull(
          initial: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          success: (signInResponse) {
            context.pushNamed(Routes.nowPlayingScreen);
          },
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primary,
                ),
              ),
            );
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('SignIn Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed In successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon:  Icon(Icons.error, color: Colors.red, size: 32.w),
        content: Text(error, style: TextStyles.h3Medium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('Got it', style: TextStyles.h3Medium),
          ),
        ],
      ),
    );
  }
}
