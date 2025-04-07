import 'package:dio/dio.dart';
import 'package:gedeed/Core/NetWorking/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../../Features/Login/Data/models/login_request_body.dart';
import '../../Features/Login/Data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
