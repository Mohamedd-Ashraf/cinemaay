import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Core/DI/dependency_injection.dart';
import 'package:gedeed/Core/Routes/routes.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart'
    show LoginCubit;
import 'package:gedeed/Features/SignUp/Ui/Screen/sign_up_screen.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';
import 'package:gedeed/Features/auth_start/ui/screens/auth_start.dart';
import 'package:gedeed/Features/Login/UI/Screens/login_screen.dart';

import '../../Features/onBoarding/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => onBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: loginScreen(),
              ),
        );
      case Routes.authStart:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: authStart(),
              ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return MaterialPageRoute(builder: (_) => onBoardingScreen());
    }
  }
}
