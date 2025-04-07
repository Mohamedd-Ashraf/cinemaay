import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';

import 'Core/DI/dependency_injection.dart';
import 'Core/Routes/app_router.dart';
import 'doctor_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpGetIt();
  
  // runApp(DocApp(appRouter: AppRouter()));
  runApp(
    BlocProvider<SignUpCubit>(
      create: (_) => getIt<SignUpCubit>(),
      child: DocApp(appRouter: AppRouter()),
    ),
  );
}
