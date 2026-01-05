
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:jainebook/firebase_options.dart';

GetIt sLocator = GetIt.instance;

void setupLocator() async{
  // Register your services here
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
  sLocator.registerLazySingleton(() => FirebaseAuth.instance);
  sLocator.registerLazySingleton(() => FirebaseFirestore.instance);
 
}