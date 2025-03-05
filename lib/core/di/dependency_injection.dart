import 'package:dio/dio.dart';
import 'package:flutter_adv/features/login/logic/login_cubit.dart';
import 'package:flutter_adv/features/singup/data/repos/sign_up_repo.dart';
import 'package:flutter_adv/features/singup/logic/sgin_up_state.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/singup/logic/sgin_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & apiservice
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // home i don't need to create dio $ apiservice again

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
