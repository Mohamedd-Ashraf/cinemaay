import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Core/Routes/app_router.dart';

import 'Core/Routes/routes.dart';
import 'Core/Themes/colors/colors.dart';

class CineMax extends StatelessWidget {
  final AppRouter appRouter;
  const CineMax({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'CineMax',
        // initialRoute: intialRoute(),
        initialRoute: Routes.onBoarding,
        theme: ThemeData(
          primaryColor: ColorsManager.primary,
          scaffoldBackgroundColor: ColorsManager.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

String intialRoute() {
  if (FirebaseAuth.instance.currentUser != null) {
    return Routes.nowPlayingScreen;
  } else {
    return Routes.onBoarding;
  }
}
