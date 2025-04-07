
// import 'package:dio/dio.dart';
// import 'package:gedeed/Core/NetWorking/api_service.dart';
// import 'package:gedeed/Core/NetWorking/dio_factory.dart';
// import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart';
// import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';
// import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_cubit.dart';
// import 'package:gedeed/Features/nowPlaying/now_playing_movies.dart';
// import 'package:get_it/get_it.dart';

// final getIt = GetIt.instance;
// Future<void> setUpGetIt() async {
//   Dio dio = DioFactory.getDio();
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
// getIt.registerLazySingleton<MovieRepository>(() => MovieRepository());
// getIt.registerFactory<NowPlayingCubit>(() => NowPlayingCubit());
//   getIt.registerLazySingleton<SignInCubit>(() => SignInCubit());
//   getIt.registerFactory<SignUpCubit>(() => SignUpCubit());
// }

import 'package:dio/dio.dart';
import 'package:gedeed/Core/NetWorking/api_service.dart';
import 'package:gedeed/Core/NetWorking/dio_factory.dart';
import 'package:gedeed/Features/Login/Logic/cubit/login_cubit.dart';
import 'package:gedeed/Features/SignUp/logic/cubit/sign_up_cubit.dart';

import 'package:gedeed/Features/nowPlaying/Logic/cubit/now_playing_cubit.dart';
import 'package:gedeed/Features/nowPlaying/data/repo/movie_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();

  // Core
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Repos
  getIt.registerLazySingleton<MovieRepository>(() => MovieRepository());

  // Cubits
  getIt.registerLazySingleton<SignInCubit>(() => SignInCubit());
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit());
  getIt.registerFactory<NowPlayingCubit>(() => NowPlayingCubit());
}

