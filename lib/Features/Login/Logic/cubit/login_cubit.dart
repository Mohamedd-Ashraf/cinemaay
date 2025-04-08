import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gedeed/Core/NetWorking/user_session.dart';
import '../../../../Core/DI/dependency_injection.dart';
import '../../../../Core/Helpers/FireBase/fire_base_helper.dart';
import 'login_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void signIn() async {
    emit(SignInState.loading());
    try {
      final result = await FireBaseHelper().signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
      if (result is User) {
        final displayName = result.displayName ?? 'User';
        // Save it to GetIt service
        getIt<UserSession>().setUsername(displayName);
        emit(SignInState.success(result));
      } else {
        emit(SignInState.error(message: result));
      }
    } catch (e) {
      emit(SignInState.error(message: e.toString()));
    }
  }

  void signOut() async {
    emit(SignInState.loading());
    try {
      await FireBaseHelper().signOut();
      emit(SignInState.success(null));
    } catch (e) {
      emit(SignInState.error(message: e.toString()));
    }
  }
}
