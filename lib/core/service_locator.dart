import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:jainebook/domain/usecase/user_information/is_user_authenticated_use_case.dart';
import 'package:jainebook/domain/usecase/user_information/user_logout_use_case.dart';
import 'package:jainebook/firebase_options.dart';
import 'package:jainebook/presentation/home/bloc/dashboard_bloc.dart';
import 'package:jainebook/presentation/login/bloc/login_bloc.dart';
import 'package:jainebook/presentation/splash/bloc/splash_bloc.dart';
import 'package:jainebook/router/app_router.dart';

import '../data/repository/repo_imp.dart';
import '../domain/repository/repo.dart';
import '../domain/usecase/use_case.dart';
import '../presentation/forget_password/bloc/forget_password_bloc.dart';
import '../presentation/registration/bloc/registration_bloc.dart';

GetIt sLocator = GetIt.instance;

Future<void> setupLocator() async {
  // Register your services here
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  sLocator.registerLazySingleton(() => FirebaseAuth.instance);
  sLocator.registerLazySingleton(() => FirebaseFirestore.instance);
  sLocator.registerLazySingleton(() => AppRouter());
  setupRepositories();
  setupUseCases();
  setupBlocs();
}

void setupRepositories() async {
  sLocator.registerLazySingleton<AuthRepo>(() => AuthRepoImpl());
  sLocator.registerLazySingleton<UserRepo>(() => UserRepoImpl());
}

void setupUseCases() async {
  sLocator.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sLocator.get(), sLocator.get()),
  );

  sLocator.registerLazySingleton<RegistrationUseCase>(
    () => RegistrationUseCase(sLocator.get(), sLocator.get()),
  );
  sLocator.registerLazySingleton<SaveUserInfoUseCase>(
    () => SaveUserInfoUseCase(sLocator.get()),
  );
  sLocator.registerLazySingleton<ForgetPasswordUseCase>(
    () => ForgetPasswordUseCase(sLocator.get()),
  );
  sLocator.registerLazySingleton<FetchUserInfoUseCase>(
    () => FetchUserInfoUseCase(),
  );
  sLocator.registerLazySingleton<IsUserAuthenticatedUseCase>(
    () => IsUserAuthenticatedUseCase(sLocator.get()),
  );
  sLocator.registerLazySingleton<UserLogoutUseCase>(() => UserLogoutUseCase());
}

void setupBlocs() async {
  sLocator.registerFactory(
    () => SplashBloc(sLocator.get<IsUserAuthenticatedUseCase>()),
  );
  sLocator.registerFactory(() => LoginBloc(sLocator.get()));
  sLocator.registerFactory(() => RegistrationBloc(sLocator.get()));
  sLocator.registerFactory(() => ForgetPasswordBloc(sLocator.get()));
  sLocator.registerFactory(
    () => DashboardBloc(sLocator.get<UserLogoutUseCase>()),
  );
}
