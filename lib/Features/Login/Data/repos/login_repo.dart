

import '../../../../Core/NetWorking/api_error_handler.dart' show ErrorHandler;
import '../../../../Core/NetWorking/api_result.dart';
import '../../../../Core/NetWorking/api_service.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
