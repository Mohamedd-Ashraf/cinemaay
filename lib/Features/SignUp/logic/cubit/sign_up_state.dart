part of 'sign_up_cubit.dart';

@freezed
class SignUpState<T> with _$SignUpState {
  const factory SignUpState.SignupInitial() = SignupInitial;
  const factory SignUpState.signupLoading() = signupLoading;
  const factory SignUpState.signupSuccess(T data) = SignupSuccess<T>;
  const factory SignUpState.signupError({required String error}) = SignupError;
}
