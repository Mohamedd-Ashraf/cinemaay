import 'package:dio/dio.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';
import 'package:gedeed/Core/NetWorking/dio_factory.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart';
import 'package:gedeed/Features/Login/Data/repos/login_repo.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit());
}
