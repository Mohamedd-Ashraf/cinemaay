import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_state.dart';
import 'package:gedeed/Features/Login/Data/models/login_request_body.dart';
import 'package:gedeed/Features/Login/Data/repos/login_repo.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());
  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    try {
      final response = await _loginRepo.login(loginRequestBody);
      response.when(
        success: (data) {
          emit(LoginState.success(data));
        },
        failure: (error) {
          emit(LoginState.error(message: error.apiErrorModel.message?? ''));
        },
      );
    } catch (e) {
      emit(LoginState.error(message: e.toString()));
    }
  }
}
