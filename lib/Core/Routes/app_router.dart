import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../DI/dependency_injection.dart';
import 'routes.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart'
    show SignInCubit;
import 'package:gedeed/Features/SignUp/Ui/Screen/sign_up_screen.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';
import 'package:gedeed/Features/auth_start/ui/screens/auth_start.dart';
import 'package:gedeed/Features/Login/UI/Screens/login_screen.dart';
import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_cubit.dart';
import 'package:gedeed/Features/nowPlaying/UI/screens/now_playing.dart';
import 'package:gedeed/Features/onBoarding/ui/screens/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignInCubit>(),
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
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: SignUpScreen(),
              ),
        );
      case Routes.nowPlayingScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (_) => getIt<NowPlayingCubit>()..fetchNowPlaying(),
                child: NowPlayingScreen(),
              ),
        );
      default:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
    }
  }
}
