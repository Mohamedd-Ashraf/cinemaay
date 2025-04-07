
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';
@freezed
class SignInState<T> with _$SignInState<T> {
  const factory SignInState.initial() = SignInIntial;
  const factory SignInState.loading() = SignInLoading;
  const factory SignInState.success(T data) = SignInSuccess<T>;
  const factory SignInState.error({required String message}) = SignInError;

}
