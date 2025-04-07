import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gedeed/Core/Helpers/FireBase/fire_base_helper.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SignUpCubit() : super(SignUpState.SignupInitial());
  void signUp() async {
    emit(SignUpState.signupLoading());
    try {
      final result = await FireBaseHelper().signUpWithEmailAndPassword(
        emailController.text,
        passwordController.text,
        nameController.text,
      );
      if (result is User) {
        emit(SignUpState.signupSuccess(result));
      } else {
        emit(SignUpState.signupError(error: result));
      }
      emit(SignUpState.signupSuccess(result));
    } catch (e) {
      emit(SignUpState.signupError(error: e.toString()));
    }
  }

  void signIn(String email, String password) async {
    emit(SignUpState.signupLoading());
    try {
      final result = await FireBaseHelper().signInWithEmailAndPassword(
        email,
        password,
      );
      if (result is User) {
        emit(SignUpState.signupSuccess(result));
      } else {
        emit(SignUpState.signupError(error: result));
      }
    } catch (e) {
      emit(SignUpState.signupError(error: e.toString()));
    }
  }

  void signOut() async {
    emit(SignUpState.signupLoading());
    try {
      await FireBaseHelper().signOut();
      emit(SignUpState.signupSuccess(null));
    } catch (e) {
      emit(SignUpState.signupError(error: e.toString()));
    }
  }
}
