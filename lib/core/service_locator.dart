import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:jainebook/firebase_options.dart';
import 'package:jainebook/router/app_router.dart';

import '../data/repository/repo_imp.dart';
import '../domain/usecase/use_case.dart';

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
}

void setupRepositories() async {
  sLocator.registerLazySingleton(() => AuthRepoImpl());
  sLocator.registerLazySingleton(() => UserRepoImpl());
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
}
