import 'package:get_it/get_it.dart';

import '../NetWorking/user_session.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<UserSession>(() => UserSession());
}
